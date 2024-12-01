#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <sodium.h>
#include <filesystem> // Requires C++17 or later
#include <map>

using namespace std;

// Function to initialize libsodium
void initialize_libsodium()
{
    if (sodium_init() < 0)
    {
        // Panic! the library couldn't be initialized, it is not safe to use
        std::cerr << "libsodium initialization failed" << std::endl;
        exit(1);
    }
}

struct KeyPair {
    unsigned char public_key[crypto_box_PUBLICKEYBYTES];
    unsigned char secret_key[crypto_box_SECRETKEYBYTES];
};

// Function to generate ECC key pair
KeyPair generate_ecc_keypair()
{
    KeyPair kp;
    crypto_box_keypair(kp.public_key, kp.secret_key);
    return kp;
}

// Function to export a key to a file
void export_key_to_file(const unsigned char* key, size_t key_length, const std::string& filename)
{
    std::ofstream outfile(filename, std::ios::binary);
    if (!outfile)
    {
        std::cerr << "Failed to open file for writing: " << filename << std::endl;
        exit(1);
    }
    outfile.write(reinterpret_cast<const char*>(key), key_length);
    outfile.close();
}

// Function to export both public and private keys to files
void export_keypair_to_files(const KeyPair& kp, const std::string& pubkey_filename, const std::string& privkey_filename)
{
    export_key_to_file(kp.public_key, crypto_box_PUBLICKEYBYTES, pubkey_filename);
    export_key_to_file(kp.secret_key, crypto_box_SECRETKEYBYTES, privkey_filename);
}

// Function to save ciphertext to a file
void save_ciphertext_to_file(const unsigned char* ciphertext, size_t ciphertext_length, const std::string& filename)
{
    std::ofstream outfile(filename, std::ios::binary);
    if (!outfile)
    {
        std::cerr << "Failed to open file for writing: " << filename << std::endl;
        exit(1);
    }
    outfile.write(reinterpret_cast<const char*>(ciphertext), ciphertext_length);
    outfile.close();
}

// Function to encrypt data
unsigned char* encrypt_data(const unsigned char* public_key, const unsigned char* message, unsigned long long message_len, unsigned long long& ciphertext_len)
{
    ciphertext_len = message_len + crypto_box_SEALBYTES;
    unsigned char* ciphertext = new unsigned char[ciphertext_len];

    if (crypto_box_seal(ciphertext, message, message_len, public_key) != 0)
    {
        std::cerr << "Encryption failed" << std::endl;
        delete[] ciphertext;
        exit(1);
    }
    return ciphertext;
}

// Function to encrypt input data with 'n' different ECC keys and save results
void encrypt_with_multiple_keys(const unsigned char* input_data, size_t input_length, int n, const std::string& directory)
{
    for (int i = 1; i <= n; ++i)
    {
        // Generate ECC key pair
        KeyPair kp = generate_ecc_keypair();

        // Encrypt the input data
        unsigned long long ciphertext_len;
        unsigned char* ciphertext = encrypt_data(kp.public_key, input_data, input_length, ciphertext_len);

        // Construct filenames
        std::string pubkey_filename = directory + "/public_key_" + std::to_string(i) + ".pem";
        std::string privkey_filename = directory + "/private_key_" + std::to_string(i) + ".pem";
        std::string ciphertext_filename = directory + "/encrypted_" + std::to_string(i) + ".bin";

        // Export keys to files
        export_keypair_to_files(kp, pubkey_filename, privkey_filename);

        // Save ciphertext to file
        save_ciphertext_to_file(ciphertext, ciphertext_len, ciphertext_filename);

        // Clean up
        delete[] ciphertext;

        // Optional: Display progress
        if (i % 100 == 0)
        {
            std::cout << "Processed " << i << " keys..." << std::endl;
        }
    }
}

map<string, string> parseArgs(int argc, char **argv) {
    map<string, string> args;

    for (int i = 1; i < argc; ++i) {
        string arg = argv[i];

        // Check if argument is a named argument starting with "--"
        if (arg.rfind("--", 0) == 0 && i + 1 < argc) {
            string key = arg.substr(2); // Remove "--" prefix
            args[key] = argv[++i];      // Assign the next element as the value
        } else {
            cerr << "Error: Missing value for argument " << arg << endl;
            exit(1);
        }
    }

    return args;
}

int main(int argc,char*argv[])
{
    // Initialize libsodium
    initialize_libsodium();

    map<string, string> args = parseArgs(argc, argv);
    const std::string output_directory  = args["outd"];
    int num_keys  = atoi(args["nkeys"].c_str());

    // Input data to encrypt
    unsigned char input_string[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.";
    unsigned char* input_data = input_string;
    size_t input_length = sizeof(input_string) - 1; // Exclude null terminator

    // Create the directory if it doesn't exist
    std::filesystem::create_directories(output_directory);

    // Encrypt the input data with multiple keys and save results
    encrypt_with_multiple_keys(input_data, input_length, num_keys, output_directory);

    std::cout << "Encrypted data with " << num_keys << " ECC key pairs in directory: " << output_directory << std::endl;

    return 0;
}
