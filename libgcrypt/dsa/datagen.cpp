#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <filesystem> // Requires C++17
#include <map>
#include <cstring>
#include <cstdlib>
#include <gcrypt.h>

using namespace std;

// Globals
static int in_fips_mode = 0; // Not in FIPS mode
static int verbose = 0;

// A simple die function to mimic snippet's behavior
static void die(const char *fmt, const char *msg = "")
{
    cerr << "Fatal error: " << fmt << msg << endl;
    exit(1);
}

// Show s-expression (for debugging if verbose)
static void show_sexp(const char *text, gcry_sexp_t sexp)
{
    if (verbose > 1)
    {
        size_t len = gcry_sexp_sprint(sexp, GCRYSEXP_FMT_ADVANCED, NULL, 0);
        vector<char> buf(len);
        gcry_sexp_sprint(sexp, GCRYSEXP_FMT_ADVANCED, buf.data(), len);
        cerr << text << buf.data() << endl;
    }
}

// Generate a DSA key (pkey, skey) with given transient_key flag
static void get_dsa_key_new(gcry_sexp_t *pkey, gcry_sexp_t *skey, int transient_key)
{
    gcry_sexp_t key_spec, key, pub_key, sec_key;
    int rc;

    // Use a known parameter set: q=160 bits, p=1024 bits for DSA
    rc = gcry_sexp_new(
        &key_spec,
        transient_key
            ? "(genkey (dsa (nbits 4:2048)(transient-key)))"
            : "(genkey (dsa (nbits 4:2048)))",
        0, 1);
    if (rc)
        die("error creating S-expression: ", gcry_strerror(rc));

    rc = gcry_pk_genkey(&key, key_spec);
    gcry_sexp_release(key_spec);
    if (rc)
    {
        if (in_fips_mode)
        {
            if (verbose)
                fprintf(stderr, "The DSA keys are not available in FIPS mode.\n");
            return;
        }
        die("error generating DSA key: ", gcry_strerror(rc));
    }

    if (verbose > 1)
        show_sexp("generated DSA key:\n", key);

    pub_key = gcry_sexp_find_token(key, "public-key", 0);
    if (!pub_key)
        die("public part missing in key\n");

    sec_key = gcry_sexp_find_token(key, "private-key", 0);
    if (!sec_key)
        die("private part missing in key\n");

    gcry_sexp_release(key);
    *pkey = pub_key;
    *skey = sec_key;
}

// Initialize libgcrypt
void initialize_libgcrypt()
{
    if (!gcry_check_version(GCRYPT_VERSION))
    {
        cerr << "libgcrypt version mismatch" << endl;
        exit(1);
    }
    gcry_control(GCRYCTL_DISABLE_SECMEM, 0);
    gcry_control(GCRYCTL_INITIALIZATION_FINISHED, 0);
}

// Utility: export an S-expression to a file
void export_sexp_to_file(gcry_sexp_t sexp, const string &filename)
{
    size_t length = gcry_sexp_sprint(sexp, GCRYSEXP_FMT_CANON, NULL, 0);
    vector<char> buffer(length);
    gcry_sexp_sprint(sexp, GCRYSEXP_FMT_CANON, buffer.data(), length);

    ofstream outfile(filename, ios::binary);
    if (!outfile)
    {
        cerr << "Failed to open file for writing: " << filename << endl;
        exit(1);
    }
    outfile.write(buffer.data(), length);
    outfile.close();
}

// Import S-expression from file
// gcry_sexp_t import_sexp_from_file(const string &filename)
// {
//     ifstream infile(filename, ios::binary | ios::ate);
//     if (!infile)
//     {
//         cerr << "Failed to open file for reading: " << filename << endl;
//         exit(1);
//     }
//     streamsize size = infile.tellg();
//     infile.seekg(0, ios::beg);
//     vector<char> buffer(size);
//     if (!infile.read(buffer.data(), size))
//     {
//         cerr << "Failed to read from file: " << filename << endl;
//         exit(1);
//     }
//     infile.close();

//     gcry_sexp_t sexp;
//     gcry_error_t err = gcry_sexp_new(&sexp, buffer.data(), buffer.size(), 1);
//     if (err)
//     {
//         cerr << "Failed to create S-expression from file: " << filename << " : " << gcry_strerror(err) << endl;
//         exit(1);
//     }
//     return sexp;
// }

// Save a raw binary signature to file
// void save_signature_to_file(const vector<unsigned char> &signature, const string &filename)
// {
//     ofstream outfile(filename, ios::binary);
//     if (!outfile)
//     {
//         cerr << "Failed to open file for writing: " << filename << endl;
//         exit(1);
//     }
//     outfile.write((const char *)signature.data(), signature.size());
//     outfile.close();
// }

// Read a signature from file into a vector
// vector<unsigned char> read_signature_from_file(const string &filename)
// {
//     ifstream infile(filename, ios::binary | ios::ate);
//     if (!infile)
//     {
//         cerr << "Failed to open signature file: " << filename << endl;
//         exit(1);
//     }
//     streamsize size = infile.tellg();
//     infile.seekg(0, ios::beg);
//     vector<unsigned char> buffer(size);
//     if (!infile.read((char *)buffer.data(), size))
//     {
//         cerr << "Failed to read signature from file: " << filename << endl;
//         exit(1);
//     }
//     infile.close();
//     return buffer;
// }

// Hash data using SHA-256
vector<unsigned char> hash_data(const unsigned char *data, size_t data_length)
{
    vector<unsigned char> hash(32); // SHA256
    gcry_md_hash_buffer(GCRY_MD_SHA256, hash.data(), data, data_length);
    return hash;
}

// Sign data using DSA
// For standard DSA: (data (flags raw) (value mpi)) where mpi is the hash.
vector<unsigned char> sign_data(gcry_sexp_t privkey, const unsigned char *data, size_t data_length)
{
    vector<unsigned char> digest = hash_data(data, data_length);

    gcry_mpi_t mpi_hash;
    gcry_error_t err = gcry_mpi_scan(&mpi_hash, GCRYMPI_FMT_USG, digest.data(), digest.size(), NULL);
    if (err)
        die("Failed to create MPI from hash: ", gcry_strerror(err));

    gcry_sexp_t data_sexp;
    err = gcry_sexp_build(&data_sexp, NULL, "(data (flags raw) (value %m))", mpi_hash);
    gcry_mpi_release(mpi_hash);
    if (err)
        die("Failed to build data S-expression for signing: ", gcry_strerror(err));

    gcry_sexp_t signature_sexp;
    err = gcry_pk_sign(&signature_sexp, data_sexp, privkey);
    gcry_sexp_release(data_sexp);
    if (err)
        die("Signing failed: ", gcry_strerror(err));

    size_t length = gcry_sexp_sprint(signature_sexp, GCRYSEXP_FMT_CANON, NULL, 0);
    vector<unsigned char> signature(length);
    gcry_sexp_sprint(signature_sexp, GCRYSEXP_FMT_CANON, (char *)signature.data(), length);
    gcry_sexp_release(signature_sexp);

    return signature;
}

// Verify signature using DSA
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

// Sign input data with 'n' different DSA keys and verify them
void sign_with_multiple_keys(const unsigned char *input_data, size_t input_length, int n, const string &directory)
{
    for (int i = 1; i <= n; ++i)
    {
        gcry_sexp_t pkey, skey;
        get_dsa_key_new(&pkey, &skey, 0); // non-transient key

        // Sign the input data
        vector<unsigned char> signature = sign_data(skey, input_data, input_length);
         bool valid = verify_signature(pkey, input_data, input_length, signature);
        if (valid)
        {
            // cout << "Signature verification succeeded for key " << i << "." << endl;
        }
        else
        {
            cerr << "Signature verification failed for key " << i << "." << endl;
            continue;
        }

        // Construct filenames
        string pubkey_filename = directory + "/public_key_" + to_string(i) + ".pem";
        string privkey_filename = directory + "/private_key_" + to_string(i) + ".pem";
        // string signature_filename = directory + "/signature_" + to_string(i) + ".bin";

        // Export keys to files
        export_sexp_to_file(pkey, pubkey_filename);
        export_sexp_to_file(skey, privkey_filename);

        // Save signature to file
        // save_signature_to_file(signature, signature_filename);

        // Verify the signature
        // gcry_sexp_t imported_pubkey = import_sexp_from_file(pubkey_filename);
        // vector<unsigned char> imported_signature = read_signature_from_file(signature_filename);

       

        // Clean up
        gcry_sexp_release(pkey);
        gcry_sexp_release(skey);
        // gcry_sexp_release(imported_pubkey);

        if (i % 100 == 0)
        {
            cout << "Processed " << i << " keys..." << endl;
        }
    }
}

map<string, string> parseArgs(int argc, char **argv)
{
    map<string, string> args;
    for (int i = 1; i < argc; ++i)
    {
        string arg = argv[i];
        if (arg.rfind("--", 0) == 0 && i + 1 < argc)
        {
            string key = arg.substr(2);
            args[key] = argv[++i];
        }
        else
        {
            cerr << "Error: Missing value for argument " << arg << endl;
            exit(1);
        }
    }
    return args;
}

int main(int argc, char *argv[])
{
    initialize_libgcrypt();

    map<string, string> args = parseArgs(argc, argv);

    if (args.find("outd") == args.end() || args.find("nkeys") == args.end())
    {
        cerr << "Usage: " << argv[0] << " --outd output_directory --nkeys number_of_keys" << endl;
        exit(1);
    }

    const string output_directory = args["outd"];
    int num_keys = atoi(args["nkeys"].c_str());

    // Input data to sign
    unsigned char input_string[] =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.";
    unsigned char *input_data = input_string;
    size_t input_length = sizeof(input_string) - 1; // Exclude null terminator

    // Create directory if it doesn't exist
    std::filesystem::create_directories(output_directory);

    // Sign and verify with multiple keys
    sign_with_multiple_keys(input_data, input_length, num_keys, output_directory);

    cout << "Signed and verified data with " << num_keys << " DSA key pairs in directory: " << output_directory << endl;

    return 0;
}
