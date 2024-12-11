#include <stdio.h>
#include <string.h>
#include <chrono>
#include <iostream>
#include <fstream>
#include <vector>
#include <map>
#include <sstream>
#include <iomanip>

#include <perf.h>
#include <perfmon/pfmlib_perf_event.h>
#include <perf_util.h>

// OpenSSL headers
#include <openssl/evp.h>
#include <openssl/ec.h>
#include <openssl/pem.h>
#include <openssl/sha.h>
#include <openssl/err.h>

using namespace std;

// Profiling context
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
    NULL
};

// Error handling for OpenSSL
void handleErrors(const char *msg) {
    cerr << msg << ": " << ERR_error_string(ERR_get_error(), NULL) << endl;
    abort();
}

// Import a private key from a PEM file (EVP_PKEY)
EVP_PKEY* import_private_key(const string &filename) {
    FILE* fp = fopen(filename.c_str(), "r");
    if (!fp) {
        cerr << "Failed to open private key file: " << filename << endl;
        exit(1);
    }
    EVP_PKEY *pkey = PEM_read_PrivateKey(fp, NULL, NULL, NULL);
    fclose(fp);
    if (!pkey) {
        cerr << "Failed to read private key: " << filename << endl;
        exit(1);
    }
    return pkey;
}

// Import a public key from a PEM file (EVP_PKEY)
EVP_PKEY* import_public_key(const string &filename) {
    FILE* fp = fopen(filename.c_str(), "r");
    if (!fp) {
        cerr << "Failed to open public key file: " << filename << endl;
        exit(1);
    }
    EVP_PKEY *pkey = PEM_read_PUBKEY(fp, NULL, NULL, NULL);
    fclose(fp);
    if (!pkey) {
        cerr << "Failed to read public key: " << filename << endl;
        exit(1);
    }
    return pkey;
}

// Function to hash data using SHA-256
vector<unsigned char> hash_data(const unsigned char *data, size_t data_length) {
    vector<unsigned char> hash(SHA256_DIGEST_LENGTH);
    SHA256(data, data_length, hash.data());
    return hash;
}

// Function to sign data using ECDSA (OpenSSL)
vector<unsigned char> ecdsa_sign(EVP_PKEY *privkey, const unsigned char *data, size_t data_length, const char *events[], ofstream &file) {
    // We directly sign the data; EVP handles hashing internally if we use DigestSign.
    // But since the original structure hashes first, we can just follow that approach:
    // We'll do a direct DigestSign of the data (not the prehash), which matches the original code's intent.
    // The original code hashed separately and then created an S-expression. 
    // In OpenSSL, we can just use EVP_DigestSign* to handle hashing + signing in one go.

    EVP_MD_CTX *mdctx = EVP_MD_CTX_new();
    if (!mdctx)
        handleErrors("Failed to create MD_CTX for signing");

    // Set up profiling
    ctx = init_profile(0, events);
    start_profile(ctx);

    auto start = chrono::high_resolution_clock::now();
    if (1 != EVP_DigestSignInit(mdctx, NULL, EVP_sha256(), NULL, privkey))
        handleErrors("EVP_DigestSignInit failed");

    if (1 != EVP_DigestSignUpdate(mdctx, data, data_length))
        handleErrors("EVP_DigestSignUpdate failed");

    size_t siglen = 0;
    if (1 != EVP_DigestSignFinal(mdctx, NULL, &siglen))
        handleErrors("EVP_DigestSignFinal (get length) failed");

    vector<unsigned char> signature(siglen);
    if (1 != EVP_DigestSignFinal(mdctx, signature.data(), &siglen))
        handleErrors("EVP_DigestSignFinal (write) failed");

    signature.resize(siglen);

    auto end = chrono::high_resolution_clock::now();
    pref_result_t *res = stop_profile2(ctx);

    // Log profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << res[i].name << ":" << res[i].result << "\n";
    }

    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    file << "signing_time:" << duration << "\n";

    EVP_MD_CTX_free(mdctx);
    return signature;
}

// Verify signature using ECDSA (OpenSSL)
bool verify_signature(EVP_PKEY *pubkey, const unsigned char *data, size_t data_length, const vector<unsigned char> &signature) {
    EVP_MD_CTX *mdctx = EVP_MD_CTX_new();
    if (!mdctx) {
        cerr << "Failed to create MD_CTX for verification" << endl;
        return false;
    }

    if (1 != EVP_DigestVerifyInit(mdctx, NULL, EVP_sha256(), NULL, pubkey)) {
        EVP_MD_CTX_free(mdctx);
        return false;
    }

    if (1 != EVP_DigestVerifyUpdate(mdctx, data, data_length)) {
        EVP_MD_CTX_free(mdctx);
        return false;
    }

    int ret = EVP_DigestVerifyFinal(mdctx, signature.data(), signature.size());
    EVP_MD_CTX_free(mdctx);

    return (ret == 1);
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

int main(int argc, char **argv) {
    // Initialize OpenSSL (auto-init in newer versions, but we can still load strings)
    OpenSSL_add_all_algorithms();
    ERR_load_crypto_strings();

    int ret = pfm_initialize();
    if (ret != PFM_SUCCESS) {
        cerr << "Cannot initialize library: " << pfm_strerror(ret) << endl;
        return 1;
    }

    if (argc < 5) {
        cerr << "Error: Not enough arguments.\n";
        cerr << "Usage: ./main --output output_file_name --private_key key_file_name --public_key pub_file_name\n";
        return 1;
    }

    map<string, string> args = parseArgs(argc, argv);
    string output_file_name = args["output"];
    string key_file_name = args["private_key"];
    string public_key_file_name = args["public_key"];

    // Import keys
    EVP_PKEY *privkey = import_private_key(key_file_name);
    EVP_PKEY *publickey = import_public_key(public_key_file_name);

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
        if (!valid) {
            cerr << "Signature verification failed for iteration starting at event " << i << "." << endl;
        }
    }

    file.close();
    EVP_PKEY_free(privkey);
    EVP_PKEY_free(publickey);
    ERR_free_strings();
    return 0;
}
