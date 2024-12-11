#include <gcrypt.h>
#include <stdio.h>
#include <string.h>
#include <chrono>
#include <iostream>
#include <fstream>
#include <vector>
#include <perf.h>
#include <perfmon/pfmlib_perf_event.h>
#include <perf_util.h>
#include <map>
#include <sstream>
#include <iomanip>

using namespace std;

profiling_context_t *ctx;

const int total_events = 21;
const char *gen_events__[] = {
    "cycles:u", "LLC_REFERENCES:u", "LLC_MISSES:u",
    "BRANCH_INSTRUCTIONS_RETIRED", "MISPREDICTED_BRANCH_RETIRED", "PERF_COUNT_HW_INSTRUCTIONS",
    "CACHE-REFERENCES", "PERF_COUNT_HW_CACHE_MISSES", "BRANCH-INSTRUCTIONS",
    "PERF_COUNT_HW_BRANCH_MISSES", "L1-DCACHE-LOAD-MISSES", "L1-DCACHE-LOADS",
    "L1-DCACHE-STORES", "L1-ICACHE-LOAD-MISSES", "l1d.replacement",
    "LLC-LOADS", "LLC-LOAD-MISSES", "LLC-STORES",
    "cycles:u", "LLC_REFERENCES:u", "LLC_MISSES:u",
    NULL  // Marks the end of the events array
};


#define NEED_LIBGCRYPT_VERSION "1.8.11"
// Function to initialize libgcrypt
void initialize_libgcrypt()
{
    if (!gcry_check_version(NEED_LIBGCRYPT_VERSION))
    {
        fprintf (stderr, "libgcrypt is too old (need %s, have %s)\n",
        NEED_LIBGCRYPT_VERSION, gcry_check_version (NULL));
        exit (2);
    }
    /* We don’t want to see any warnings, e.g. because we have not yet
    parsed program options which might be used to suppress such
    warnings. */
    gcry_control (GCRYCTL_SUSPEND_SECMEM_WARN);

    /* ... If required, other initialization goes here. Note that the
    process might still be running with increased privileges and that
    the secure memory has not been initialized. */

    /* Allocate a pool of 16k secure memory. This makes the secure memory
    available and also drops privileges where needed. Note that by
    using functions like gcry_xmalloc_secure and gcry_mpi_snew Libgcrypt
    may expand the secure memory pool with memory which lacks the
    property of not being swapped out to disk. */
    gcry_control (GCRYCTL_INIT_SECMEM, 16384, 0);

    /* It is now okay to let Libgcrypt complain when there was/is
    a problem with the secure memory. */
    gcry_control (GCRYCTL_RESUME_SECMEM_WARN);
    /* ... If required, other initialization goes here. */

    /* Tell Libgcrypt that initialization has completed. */
    gcry_control (GCRYCTL_INITIALIZATION_FINISHED, 0);

    /*It is important that these initialization steps are not done by a library but by the actual
    application. A library using Libgcrypt might want to check for finished initialization using:*/

    if (!gcry_control (GCRYCTL_INITIALIZATION_FINISHED_P))
    {
        fputs ("libgcrypt has not been initialized\n", stderr);
        abort ();
    }
}

// Function to handle errors from Libgcrypt
void handleErrors(const char *msg, gcry_error_t err) {
    fprintf(stderr, "%s: %s / %s\n", msg, gcry_strsource(err), gcry_strerror(err));
    abort();
}

// Function to import a private key from a file
gcry_sexp_t import_private_key(const string &filename) {
    ifstream infile(filename, ios::binary | ios::ate);
    if (!infile) {
        cerr << "Failed to open file for reading: " << filename << endl;
        exit(1);
    }

    streamsize size = infile.tellg();
    infile.seekg(0, ios::beg);
    vector<char> buffer(size);
    if (!infile.read(buffer.data(), size)) {
        cerr << "Failed to read private key from file: " << filename << endl;
        exit(1);
    }
    infile.close();

    gcry_sexp_t privkey;
    gcry_error_t err = gcry_sexp_new(&privkey, buffer.data(), buffer.size(), 1);
    if (err) {
        cerr << "Failed to create private key S-expression: " << gcry_strerror(err) << endl;
        exit(1);
    }
    return privkey;
}

// Function to hash data using SHA-256
vector<unsigned char> hash_data(const unsigned char *data, size_t data_length) {
    vector<unsigned char> hash(32); // SHA256 is 32 bytes
    gcry_md_hash_buffer(GCRY_MD_SHA256, hash.data(), data, data_length);
    return hash;
}

// Function to sign data using ECDSA
vector<unsigned char> ecdsa_sign(const gcry_sexp_t privkey, const unsigned char *data, size_t data_length, const char *events[], ofstream &file) {
    vector<unsigned char> digest = hash_data(data, data_length);

    gcry_mpi_t mpi_hash;
    gcry_error_t err = gcry_mpi_scan(&mpi_hash, GCRYMPI_FMT_USG, digest.data(), digest.size(), NULL);
    if (err) handleErrors("Failed to create MPI from hash", err);

    gcry_sexp_t data_sexp;
    err = gcry_sexp_build(&data_sexp, NULL, "(data (flags raw) (value %m))", mpi_hash);
    gcry_mpi_release(mpi_hash);
    if (err) handleErrors("Failed to build data S-expression for signing", err);

    gcry_sexp_t signature_sexp;

    ctx = init_profile(0, events);
    start_profile(ctx);

    auto start = chrono::high_resolution_clock::now();
    err = gcry_pk_sign(&signature_sexp, data_sexp, privkey);
    auto end = chrono::high_resolution_clock::now();

    if (err) handleErrors("Signing failed", err);

    pref_result_t *res = stop_profile2(ctx);

    // Log profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << res[i].name << ":" << res[i].result << "\n";
    }

    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    file << "signing_time:" << duration << "\n";

    // Serialize signature
    size_t length = gcry_sexp_sprint(signature_sexp, GCRYSEXP_FMT_CANON, NULL, 0);
    vector<unsigned char> signature(length);
    gcry_sexp_sprint(signature_sexp, GCRYSEXP_FMT_CANON, (char *)signature.data(), length);

    gcry_sexp_release(data_sexp);
    gcry_sexp_release(signature_sexp);

    return signature;
}

map<string, string> parseArgs(int argc, char **argv) {
    map<string, string> args;

    for (int i = 1; i < argc; ++i) {
        string arg = argv[i];

        if (arg.rfind("--", 0) == 0 && i + 1 < argc) {
            string key = arg.substr(2);
            args[key] = argv[++i];
        } else {
            cerr << "Error: Missing value for argument " << arg << endl;
            exit(1);
        }
    }

    if (args.find("output") == args.end()) {
        cerr << "Error: Missing required argument --output\n";
        exit(1);
    }

    return args;
}
// Verify signature using ECDSA
// Same format for verification: (data (flags raw) (value mpi))
bool verify_signature(gcry_sexp_t pubkey, const unsigned char *data, size_t data_length, const vector<unsigned char> &signature)
{
    vector<unsigned char> digest = hash_data(data, data_length);

    gcry_mpi_t mpi_hash;
    gcry_error_t err = gcry_mpi_scan(&mpi_hash, GCRYMPI_FMT_USG, digest.data(), digest.size(), NULL);
    if (err)
    {
        cerr << "Failed to create MPI from hash (verify): " << gcry_strerror(err) << endl;
        exit(1);
    }

    gcry_sexp_t data_sexp;
    err = gcry_sexp_build(&data_sexp, NULL, "(data (flags raw) (value %m))", mpi_hash);
    gcry_mpi_release(mpi_hash);
    if (err)
    {
        cerr << "Failed to build data S-expression for verification: " << gcry_strerror(err) << endl;
        exit(1);
    }

    gcry_sexp_t signature_sexp;
    err = gcry_sexp_new(&signature_sexp, (const char *)signature.data(), signature.size(), 1);
    if (err)
    {
        cerr << "Failed to create S-expression from signature: " << gcry_strerror(err) << endl;
        gcry_sexp_release(data_sexp);
        exit(1);
    }

    err = gcry_pk_verify(signature_sexp, data_sexp, pubkey);
    gcry_sexp_release(data_sexp);
    gcry_sexp_release(signature_sexp);

    return (err == 0);
}
int main(int argc, char **argv) {
    // if (!gcry_check_version(GCRYPT_VERSION)) {
    //     fprintf(stderr, "Libgcrypt version mismatch\n");
    //     return 1;
    // }
    // gcry_control(GCRYCTL_INITIALIZATION_FINISHED, 0);

    initialize_libgcrypt();

    int ret = pfm_initialize();
    if (ret != PFM_SUCCESS) {
        cerr << "Cannot initialize library: " << pfm_strerror(ret) << endl;
        return 1;
    }

    if (argc < 3) {
        cerr << "Error: Arguments less than 2.\n";
        cerr << "Usage: ./main --output output_file_name --private_key key_file_name\n";
        return 1;
    }

    map<string, string> args = parseArgs(argc, argv);
    string output_file_name = args["output"];
    string key_file_name = args["private_key"];
    string public_key_file_name = args["public_key"];

    // Import private key
    gcry_sexp_t privkey = import_private_key(key_file_name);
    gcry_sexp_t publickey = import_private_key(public_key_file_name);

    unsigned char message[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.";
    ofstream file(output_file_name, ios::out | ios::trunc);
    if (!file) {
        cerr << "Error opening output file: " << output_file_name << endl;
        return 1;
    }

    int size = total_events;

    for (int i = 0; i < size - 2; i += 3) {
        vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2], NULL};
        vector<unsigned char> signature = ecdsa_sign(privkey, message, strlen((char *)message), events.data(), file);
        bool valid = verify_signature(publickey, message, strlen((char *)message), signature);
        if (valid)
        {
            // cout << "Signature verification succeeded for key " << i << "." << endl;
        }
        else
        {
            cerr << "Signature verification failed for key " << i << "." << endl;
        }

        // file << "Signature:\n" << hex << setfill('0');
        // for (unsigned char c : signature) file << setw(2) << (int)c;
        // file << "\n";
    }
    
    file.close();
    gcry_sexp_release(privkey);
    return 0;
}
