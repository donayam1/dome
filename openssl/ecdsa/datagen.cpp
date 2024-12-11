#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <filesystem> // Requires C++17
#include <map>
#include <cstring>
#include <cstdlib>
#include <openssl/evp.h>
#include <openssl/ec.h>
#include <openssl/ecdsa.h>
#include <openssl/err.h>
#include <openssl/pem.h>
#include <openssl/sha.h>

using namespace std;

// Globals
static int in_fips_mode = 0; // Not in FIPS mode (unused here, but kept for structure)
static int verbose = 0;

// A simple die function to mimic snippet's behavior
static void die(const char *fmt, const char *msg = "")
{
    cerr << "Fatal error: " << fmt << msg << endl;
    exit(1);
}

// We no longer have s-expressions. So show_sexp is a no-op (kept for structure).
static void show_sexp(const char *text, void *ignored)
{
    if (verbose > 1) {
        cerr << text << "No s-expression in OpenSSL mode." << endl;
    }
}

// Generate an ECDSA key (pkey, skey) with given transient_key flag
// Using NIST P-256 curve for ECDSA
// In OpenSSL, a single EVP_PKEY holds both public and private keys.
// We'll return the same key as both pkey and skey for compatibility with original structure.
static void get_ecdsa_key_new(EVP_PKEY **pkey, EVP_PKEY **skey, int transient_key)
{
    EVP_PKEY_CTX *ctx = EVP_PKEY_CTX_new_id(EVP_PKEY_EC, NULL);
    if (!ctx)
        die("Failed to create EVP_PKEY_CTX: ", "");

    if (EVP_PKEY_paramgen_init(ctx) <= 0)
        die("Failed to init paramgen: ", "");

    // Set curve to NID_X9_62_prime256v1 which corresponds to NIST P-256
    if (EVP_PKEY_CTX_set_ec_paramgen_curve_nid(ctx, NID_X9_62_prime256v1) <= 0)
        die("Failed to set EC curve: ", "");

    EVP_PKEY *params = NULL;
    if (EVP_PKEY_paramgen(ctx, &params) <= 0)
        die("Failed to generate parameters: ", "");

    EVP_PKEY_CTX_free(ctx);

    ctx = EVP_PKEY_CTX_new(params, NULL);
    EVP_PKEY_free(params);
    if (!ctx)
        die("Failed to create keygen context: ", "");

    if (EVP_PKEY_keygen_init(ctx) <= 0)
        die("Keygen init failed: ", "");

    EVP_PKEY *key = NULL;
    if (EVP_PKEY_keygen(ctx, &key) <= 0)
        die("EC key generation failed: ", "");

    EVP_PKEY_CTX_free(ctx);

    // In this code, originally pkey and skey are separate sexps. Here, one EVP_PKEY holds both.
    // We'll just return the same EVP_PKEY pointer for both for consistency.
    *pkey = key; 
    *skey = key; 
}

// OpenSSL initialization (no strict equivalent to gcrypt, but we can load error strings etc.)
void initialize_openssl()
{
    // OpenSSL 1.1.0+ will auto-init. We can still load error strings if needed.
    OpenSSL_add_all_algorithms();
    ERR_load_BIO_strings();
    ERR_load_crypto_strings();
}

// Utility: export an EVP_PKEY to a file in PEM format.
// Since original code exported s-expressions, we now export PEM keys.
void export_pkey_to_file(EVP_PKEY *pkey, const string &filename, bool is_private)
{
    BIO *out = BIO_new_file(filename.c_str(), "w");
    if (!out) {
        cerr << "Failed to open file for writing: " << filename << endl;
        exit(1);
    }

    if (is_private) {
        if (!PEM_write_bio_PrivateKey(out, pkey, NULL, NULL, 0, NULL, NULL)) {
            cerr << "Failed to write private key to file: " << filename << endl;
            BIO_free(out);
            exit(1);
        }
    } else {
        // Write public key
        if (!PEM_write_bio_PUBKEY(out, pkey)) {
            cerr << "Failed to write public key to file: " << filename << endl;
            BIO_free(out);
            exit(1);
        }
    }
    BIO_free(out);
}

// Import an EVP_PKEY from a PEM file. 
EVP_PKEY* import_pkey_from_file(const string &filename, bool is_private)
{
    BIO *in = BIO_new_file(filename.c_str(), "r");
    if (!in) {
        cerr << "Failed to open key file for reading: " << filename << endl;
        exit(1);
    }

    EVP_PKEY *key = NULL;
    if (is_private) {
        key = PEM_read_bio_PrivateKey(in, NULL, NULL, NULL);
    } else {
        key = PEM_read_bio_PUBKEY(in, NULL, NULL, NULL);
    }

    BIO_free(in);

    if (!key) {
        cerr << "Failed to read key from file: " << filename << endl;
        exit(1);
    }

    return key;
}

// Hash data using SHA-256
vector<unsigned char> hash_data(const unsigned char *data, size_t data_length)
{
    vector<unsigned char> hash(SHA256_DIGEST_LENGTH);
    SHA256(data, data_length, hash.data());
    return hash;
}

// Sign data using ECDSA with OpenSSL
vector<unsigned char> sign_data(EVP_PKEY *privkey, const unsigned char *data, size_t data_length)
{
    vector<unsigned char> digest = hash_data(data, data_length);

    EVP_MD_CTX *mdctx = EVP_MD_CTX_new();
    if (!mdctx)
        die("Failed to create MD_CTX for signing", "");

    if (1 != EVP_DigestSignInit(mdctx, NULL, EVP_sha256(), NULL, privkey))
        die("EVP_DigestSignInit failed", "");

    // Since we're using a pre-hashed digest in original code, but here we directly do hash + sign,
    // we'll just sign the pre-computed hash by passing it to DigestSignUpdate.
    // However, ECDSA in OpenSSL expects the raw data normally. We'll do it the same way: just sign data directly.
    if (1 != EVP_DigestSignUpdate(mdctx, data, data_length))
        die("EVP_DigestSignUpdate failed", "");

    size_t siglen = 0;
    if (1 != EVP_DigestSignFinal(mdctx, NULL, &siglen))
        die("EVP_DigestSignFinal (size) failed", "");

    vector<unsigned char> signature(siglen);
    if (1 != EVP_DigestSignFinal(mdctx, signature.data(), &siglen))
        die("EVP_DigestSignFinal (write) failed", "");

    signature.resize(siglen);
    EVP_MD_CTX_free(mdctx);

    return signature;
}

// Verify signature using ECDSA
bool verify_signature(EVP_PKEY *pubkey, const unsigned char *data, size_t data_length, const vector<unsigned char> &signature)
{
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

// Sign input data with 'n' different ECDSA keys and verify them
void sign_with_multiple_keys(const unsigned char *input_data, size_t input_length, int n, const string &directory)
{
    for (int i = 1; i <= n; ++i)
    {
        EVP_PKEY *pkey = NULL;
        EVP_PKEY *skey = NULL;
        get_ecdsa_key_new(&pkey, &skey, 0); // non-transient key for ECDSA

        // Sign the input data
        vector<unsigned char> signature = sign_data(skey, input_data, input_length);
        bool valid = verify_signature(pkey, input_data, input_length, signature);
        if (!valid) {
            cerr << "Signature verification failed for key " << i << "." << endl;
            EVP_PKEY_free(pkey);
            // pkey == skey, so we only need one free
            continue;
        }

        // Construct filenames
        string pubkey_filename = directory + "/public_key_" + to_string(i) + ".pem";
        string privkey_filename = directory + "/private_key_" + to_string(i) + ".pem";

        // Export keys to files (for EVP_PKEY private keys, that includes the public key)
        export_pkey_to_file(skey, privkey_filename, true);
        export_pkey_to_file(pkey, pubkey_filename, false);

        // Cleanup
        EVP_PKEY_free(pkey);
        // Since pkey == skey as generated, we already freed pkey. No separate freeing needed if they are distinct pointers in real scenario.
        // But here we assigned them the same pointer. To avoid double free, we do not free skey again.

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
    initialize_openssl();

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

    // Sign and verify with multiple ECDSA keys
    sign_with_multiple_keys(input_data, input_length, num_keys, output_directory);

    cout << "Signed and verified data with " << num_keys << " ECDSA key pairs in directory: " << output_directory << endl;

    return 0;
}
