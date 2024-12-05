#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <openssl/evp.h>
#include <openssl/pem.h>
#include <openssl/ec.h>
#include <openssl/err.h>
#include <filesystem> // Requires C++17 or later
#include <map>

using namespace std;

// Function to initialize OpenSSL
void initialize_openssl()
{
    OpenSSL_add_all_algorithms();
    ERR_load_crypto_strings();
}

// Function to cleanup OpenSSL
void cleanup_openssl()
{
    EVP_cleanup();
    ERR_free_strings();
}

// Function to generate ECC key pair
EVP_PKEY* generate_ecc_keypair()
{
    EVP_PKEY_CTX *pctx = EVP_PKEY_CTX_new_id(EVP_PKEY_EC, NULL);
    if (!pctx)
    {
        cerr << "Error creating context for key generation." << endl;
        ERR_print_errors_fp(stderr);
        exit(1);
    }

    if (EVP_PKEY_keygen_init(pctx) <= 0)
    {
        cerr << "Error initializing key generation." << endl;
        ERR_print_errors_fp(stderr);
        exit(1);
    }

    // Use NID_X9_62_prime256v1 curve (equivalent to NIST P-256)
    if (EVP_PKEY_CTX_set_ec_paramgen_curve_nid(pctx, NID_X9_62_prime256v1) <= 0)
    {
        cerr << "Error setting curve NID." << endl;
        ERR_print_errors_fp(stderr);
        exit(1);
    }

    EVP_PKEY *pkey = NULL;
    if (EVP_PKEY_keygen(pctx, &pkey) <= 0)
    {
        cerr << "Error generating ECC key pair." << endl;
        ERR_print_errors_fp(stderr);
        exit(1);
    }

    EVP_PKEY_CTX_free(pctx);
    return pkey;
}

// Function to export a key to a file in PEM format
void export_key_to_file(EVP_PKEY *key, const string &filename, bool is_private)
{
    FILE *fp = fopen(filename.c_str(), "wb");
    if (!fp)
    {
        cerr << "Failed to open file for writing: " << filename << endl;
        exit(1);
    }

    if (is_private)
    {
        if (!PEM_write_PrivateKey(fp, key, NULL, NULL, 0, NULL, NULL))
        {
            cerr << "Failed to write private key to file: " << filename << endl;
            ERR_print_errors_fp(stderr);
            fclose(fp);
            exit(1);
        }
    }
    else
    {
        if (!PEM_write_PUBKEY(fp, key))
        {
            cerr << "Failed to write public key to file: " << filename << endl;
            ERR_print_errors_fp(stderr);
            fclose(fp);
            exit(1);
        }
    }

    fclose(fp);
}

// Function to sign data using ECDSA
vector<unsigned char> sign_data(EVP_PKEY *privkey, const unsigned char *data, size_t data_length)
{
    EVP_MD_CTX *mdctx = EVP_MD_CTX_new();
    if (!mdctx)
    {
        cerr << "Error creating message digest context." << endl;
        ERR_print_errors_fp(stderr);
        exit(1);
    }

    // Initialize the signing operation
    if (EVP_DigestSignInit(mdctx, NULL, EVP_sha256(), NULL, privkey) <= 0)
    {
        cerr << "Error initializing DigestSign." << endl;
        ERR_print_errors_fp(stderr);
        EVP_MD_CTX_free(mdctx);
        exit(1);
    }

    // Add data to be signed
    if (EVP_DigestSignUpdate(mdctx, data, data_length) <= 0)
    {
        cerr << "Error updating DigestSign with data." << endl;
        ERR_print_errors_fp(stderr);
        EVP_MD_CTX_free(mdctx);
        exit(1);
    }

    // Obtain the signature size
    size_t siglen = 0;
    if (EVP_DigestSignFinal(mdctx, NULL, &siglen) <= 0)
    {
        cerr << "Error obtaining signature size." << endl;
        ERR_print_errors_fp(stderr);
        EVP_MD_CTX_free(mdctx);
        exit(1);
    }

    // Allocate memory for the signature
    vector<unsigned char> signature(siglen);

    // Obtain the signature
    if (EVP_DigestSignFinal(mdctx, signature.data(), &siglen) <= 0)
    {
        cerr << "Error obtaining signature." << endl;
        ERR_print_errors_fp(stderr);
        EVP_MD_CTX_free(mdctx);
        exit(1);
    }

    // Resize signature to actual size
    signature.resize(siglen);

    EVP_MD_CTX_free(mdctx);
    return signature;
}

// Function to save signature to a file
void save_signature_to_file(const vector<unsigned char> &signature, const string &filename)
{
    ofstream outfile(filename, ios::binary);
    if (!outfile)
    {
        cerr << "Failed to open file for writing: " << filename << endl;
        exit(1);
    }

    outfile.write(reinterpret_cast<const char *>(signature.data()), signature.size());
    outfile.close();
}

// Function to sign input data with 'n' different ECC keys and save results
void sign_with_multiple_keys(const unsigned char *input_data, size_t input_length, int n, const string &directory)
{
    for (int i = 1; i <= n; ++i)
    {
        // Generate ECC key pair
        EVP_PKEY *keypair = generate_ecc_keypair();

        // Sign the input data
        vector<unsigned char> signature = sign_data(keypair, input_data, input_length);

        // Construct filenames
        string pubkey_filename = directory + "/public_key_" + to_string(i) + ".pem";
        string privkey_filename = directory + "/private_key_" + to_string(i) + ".pem";
        string signature_filename = directory + "/signature_" + to_string(i) + ".bin";

        // Export keys to files
        export_key_to_file(keypair, pubkey_filename, false); // Export public key
        export_key_to_file(keypair, privkey_filename, true);  // Export private key

        // Save signature to file
        save_signature_to_file(signature, signature_filename);

        // Clean up
        EVP_PKEY_free(keypair);

        // Optional: Display progress
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

        // Check if argument is a named argument starting with "--"
        if (arg.rfind("--", 0) == 0 && i + 1 < argc)
        {
            string key = arg.substr(2); // Remove "--" prefix
            args[key] = argv[++i];      // Assign the next element as the value
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
    // Initialize OpenSSL
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
    unsigned char input_string[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.";
    unsigned char *input_data = input_string;
    size_t input_length = sizeof(input_string) - 1; // Exclude null terminator

    // Create the directory if it doesn't exist
    filesystem::create_directories(output_directory);

    // Sign the input data with multiple keys and save results
    sign_with_multiple_keys(input_data, input_length, num_keys, output_directory);

    cout << "Signed data with " << num_keys << " ECC key pairs in directory: " << output_directory << endl;

    // Cleanup OpenSSL
    cleanup_openssl();

    return 0;
}
