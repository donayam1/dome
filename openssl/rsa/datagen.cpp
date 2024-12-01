#include <openssl/rsa.h>
#include <openssl/pem.h>
#include <openssl/err.h>
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <filesystem> // Requires C++17 or later
#include <map>

// Function to generate RSA key pair
RSA* generate_rsa_keypair(unsigned int nbits) {
    RSA* rsa = RSA_new();
    BIGNUM* e = BN_new();
    if (!BN_set_word(e, RSA_F4) || !RSA_generate_key_ex(rsa, nbits, e, NULL)) {
        std::cerr << "Failed to generate RSA key pair: " << ERR_error_string(ERR_get_error(), NULL) << std::endl;
        RSA_free(rsa);
        BN_free(e);
        return nullptr;
    }
    BN_free(e);
    return rsa;
}

// Function to export a key to a file
void export_key_to_file(EVP_PKEY* key, const std::string& filename, bool is_private) {
    std::ofstream outfile(filename, std::ios::binary);
    if (!outfile) {
        std::cerr << "Failed to open file for writing: " << filename << std::endl;
        return;
    }

    BIO* bio = BIO_new(BIO_s_mem());
    if (is_private) {
        PEM_write_bio_PrivateKey(bio, key, NULL, NULL, 0, NULL, NULL);
    } else {
        PEM_write_bio_PUBKEY(bio, key);
    }

    BUF_MEM* buf;
    BIO_get_mem_ptr(bio, &buf);
    outfile.write(buf->data, buf->length);
    BIO_free(bio);
    outfile.close();
}

// Function to encrypt data
std::vector<unsigned char> rsa_encrypt_data(RSA* rsa, const unsigned char* data, size_t data_length) {
    std::vector<unsigned char> encrypted(RSA_size(rsa));
    int encrypted_length = RSA_public_encrypt(data_length, data, encrypted.data(), rsa, RSA_PKCS1_OAEP_PADDING);

    if (encrypted_length == -1) {
        std::cerr << "Encryption failed: " << ERR_error_string(ERR_get_error(), NULL) << std::endl;
        return {};
    }

    encrypted.resize(encrypted_length);
    return encrypted;
}

// Function to save ciphertext to a file
void save_ciphertext_to_file(const std::vector<unsigned char>& ciphertext, const std::string& filename) {
    std::ofstream outfile(filename, std::ios::binary);
    if (!outfile) {
        std::cerr << "Failed to open file for writing: " << filename << std::endl;
        return;
    }
    outfile.write(reinterpret_cast<const char*>(ciphertext.data()), ciphertext.size());
    outfile.close();
}

// Function to encrypt input data with 'n' different RSA keys and save results
void encrypt_with_multiple_keys(const unsigned char* input_data, size_t input_length, int n, const std::string& directory) {
    for (int i = 1; i <= n; ++i) {
        // Generate RSA key pair
        RSA* rsa = generate_rsa_keypair(2048);
        if (!rsa) continue;

        EVP_PKEY* pkey = EVP_PKEY_new();
        EVP_PKEY_assign_RSA(pkey, rsa);

        // Encrypt the input data
        std::vector<unsigned char> ciphertext = rsa_encrypt_data(rsa, input_data, input_length);

        // Construct filenames
        std::string pubkey_filename = directory + "/public_key_" + std::to_string(i) + ".pem";
        std::string privkey_filename = directory + "/private_key_" + std::to_string(i) + ".pem";
        std::string ciphertext_filename = directory + "/encrypted_" + std::to_string(i) + ".bin";

        // Export keys to files
        export_key_to_file(pkey, pubkey_filename, false);
        export_key_to_file(pkey, privkey_filename, true);

        // Save ciphertext to file
        save_ciphertext_to_file(ciphertext, ciphertext_filename);

        // Clean up
        EVP_PKEY_free(pkey);

        // Optional: Display progress
        if (i % 100 == 0) {
            std::cout << "Processed " << i << " keys..." << std::endl;
        }
    }
}

// Argument parser function
std::map<std::string, std::string> parseArgs(int argc, char **argv) {
    std::map<std::string, std::string> args;

    for (int i = 1; i < argc; ++i) {
        std::string arg = argv[i];

        // Check if argument is a named argument starting with "--"
        if (arg.rfind("--", 0) == 0 && i + 1 < argc) {
            std::string key = arg.substr(2); // Remove "--" prefix
            args[key] = argv[++i];      // Assign the next element as the value
        } else {
            std::cerr << "Error: Missing value for argument " << arg << std::endl;
            exit(1);
        }
    }

    return args;
}

int main(int argc, char* argv[]) {
    // Initialize OpenSSL
    OpenSSL_add_all_algorithms();
    ERR_load_crypto_strings();

    std::map<std::string, std::string> args = parseArgs(argc, argv);
    const std::string output_directory = args["outd"];  // argv[2];
    int num_keys = std::stoi(args["nkeys"]);

    // Input data to encrypt
    unsigned char input_string[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.";
    const unsigned char* input_data = input_string;
    size_t input_length = sizeof(input_string) - 1; // Exclude null terminator

    // Create the output directory if it doesn't exist
    std::filesystem::create_directories(output_directory);

    // Encrypt the input data with multiple keys and save results
    encrypt_with_multiple_keys(input_data, input_length, num_keys, output_directory);

    std::cout << "Encrypted data with " << num_keys << " RSA key pairs in directory: " << output_directory << std::endl;

    // Cleanup OpenSSL
    EVP_cleanup();
    ERR_free_strings();

    return 0;
}
