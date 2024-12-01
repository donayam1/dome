#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <gcrypt.h>
#include <filesystem> // Requires C++17 or later
#include <map>
using namespace std;

// Function to initialize libgcrypt
void initialize_libgcrypt()
{
    if (!gcry_check_version(GCRYPT_VERSION))
    {
        std::cerr << "libgcrypt version mismatch" << std::endl;
        exit(1);
    }
    // Disable secure memory warning
    gcry_control(GCRYCTL_DISABLE_SECMEM, 0);
    // Tell libgcrypt that initialization has completed
    gcry_control(GCRYCTL_INITIALIZATION_FINISHED, 0);
}

// Function to generate RSA key pair
gcry_sexp_t generate_rsa_keypair(unsigned int nbits)
{
    gcry_error_t err;
    gcry_sexp_t params;
    gcry_sexp_t keypair;

    // Build S-expression for key generation parameters
    err = gcry_sexp_build(&params, NULL, "(genkey (rsa (nbits %u)))", nbits);
    if (err)
    {
        std::cerr << "Failed to build S-expression: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    // Generate the key pair
    err = gcry_pk_genkey(&keypair, params);
    gcry_sexp_release(params);

    if (err)
    {
        std::cerr << "Failed to generate RSA key pair: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    return keypair;
}

// Function to export a key to a file
void export_key_to_file(gcry_sexp_t key, const std::string& filename)
{
    size_t key_buffer_length;
    char* key_buffer;

    // Get the size needed for the buffer
    key_buffer_length = gcry_sexp_sprint(key, GCRYSEXP_FMT_CANON, NULL, 0);
    key_buffer = (char*)malloc(key_buffer_length);

    if (!key_buffer)
    {
        std::cerr << "Failed to allocate memory for key buffer" << std::endl;
        exit(1);
    }

    // Convert the S-expression to a canonical buffer
    gcry_sexp_sprint(key, GCRYSEXP_FMT_CANON, key_buffer, key_buffer_length);

    // Write the key buffer to the file
    std::ofstream outfile(filename, std::ios::binary);
    if (!outfile)
    {
        std::cerr << "Failed to open file for writing: " << filename << std::endl;
        free(key_buffer);
        exit(1);
    }

    outfile.write(key_buffer, key_buffer_length);
    outfile.close();

    free(key_buffer);
}

// Function to export both public and private keys to files
void export_keypair_to_files(gcry_sexp_t pubkey, gcry_sexp_t privkey,
                             const std::string& pubkey_filename,
                             const std::string& privkey_filename)
{
    export_key_to_file(pubkey, pubkey_filename);
    export_key_to_file(privkey, privkey_filename);
}

// Function to save ciphertext to a file
void save_ciphertext_to_file(gcry_sexp_t ciphertext, const std::string& filename)
{
    size_t ciphertext_buffer_length;
    char* ciphertext_buffer;

    // Get the size needed for the buffer
    ciphertext_buffer_length = gcry_sexp_sprint(ciphertext, GCRYSEXP_FMT_CANON, NULL, 0);
    ciphertext_buffer = (char*)malloc(ciphertext_buffer_length);

    if (!ciphertext_buffer)
    {
        std::cerr << "Failed to allocate memory for ciphertext buffer" << std::endl;
        exit(1);
    }

    // Convert the S-expression to a canonical buffer
    gcry_sexp_sprint(ciphertext, GCRYSEXP_FMT_CANON, ciphertext_buffer, ciphertext_buffer_length);

    // Write the ciphertext buffer to the file
    std::ofstream outfile(filename, std::ios::binary);
    if (!outfile)
    {
        std::cerr << "Failed to open file for writing: " << filename << std::endl;
        free(ciphertext_buffer);
        exit(1);
    }

    outfile.write(ciphertext_buffer, ciphertext_buffer_length);
    outfile.close();

    free(ciphertext_buffer);
}

// Function to encrypt data from unsigned char* input
gcry_sexp_t rsa_encrypt_data(gcry_sexp_t pubkey, unsigned char* data, size_t data_length)
{
    gcry_error_t err;
    gcry_mpi_t mpi_data;
    gcry_sexp_t data_sexp;
    gcry_sexp_t ciphertext;

    // Convert data to MPI
    err = gcry_mpi_scan(&mpi_data, GCRYMPI_FMT_USG, data, data_length, NULL);
    if (err)
    {
        std::cerr << "Failed to create MPI from data: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    // Build data S-expression
    err = gcry_sexp_build(&data_sexp, NULL, "(data (flags raw) (value %m))", mpi_data);
    gcry_mpi_release(mpi_data);

    if (err)
    {
        std::cerr << "Failed to build data S-expression: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    // Encrypt the data
    err = gcry_pk_encrypt(&ciphertext, data_sexp, pubkey);
    gcry_sexp_release(data_sexp);

    if (err)
    {
        std::cerr << "Encryption failed: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    return ciphertext;
}

// Function to encrypt input data with 'n' different RSA keys and save results
void encrypt_with_multiple_keys(unsigned char* input_data, size_t input_length, int n, const std::string& directory)
{
    for (int i = 1; i <= n; ++i)
    {
        // Generate RSA key pair
        unsigned int nbits = 2048;
        gcry_sexp_t keypair = generate_rsa_keypair(nbits);

        // Extract public and private keys
        gcry_sexp_t pubkey = gcry_sexp_find_token(keypair, "public-key", 0);
        gcry_sexp_t privkey = gcry_sexp_find_token(keypair, "private-key", 0);

        // Encrypt the input data
        gcry_sexp_t ciphertext = rsa_encrypt_data(pubkey, input_data, input_length);

        // Construct filenames
        std::string pubkey_filename = directory + "/public_key_" + std::to_string(i)+"1.pem";
        std::string privkey_filename = directory + "/private_key_" + std::to_string(i)+"1.pem";
        std::string ciphertext_filename = directory + "/encrypted_" + std::to_string(i)+"1.bin";

        // Export keys to files
        export_keypair_to_files(pubkey, privkey, pubkey_filename, privkey_filename);

        // Save ciphertext to file
        save_ciphertext_to_file(ciphertext, ciphertext_filename);

        // Clean up
        gcry_sexp_release(keypair);
        gcry_sexp_release(pubkey);
        gcry_sexp_release(privkey);
        gcry_sexp_release(ciphertext);

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

    // // Check for required arguments and handle missing required arguments here if needed
    // if (args.find("input") == args.end()) {
    //     cerr << "Error: Missing required argument --input\n";
    //     exit(1);
    // }
    // if (args.find("output") == args.end()) {
    //     cerr << "Error: Missing required argument --output\n";
    //     exit(1);
    // }

    return args;
}
int main(int argc,char*argv[])
{
    // Initialize libgcrypt
    initialize_libgcrypt();
    map<string, string> args = parseArgs(argc, argv);
    // string private_key_fname = args["private_key"]; // argv[1];
    const std::string output_directory  = args["outd"];  //argv[2];
    int num_keys  = atoi(args["nkeys"].c_str());  //argv[2];
    

    // Input data to encrypt (changed to unsigned char array)
    unsigned char input_string[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.";
    unsigned char* input_data = input_string;
    size_t input_length = sizeof(input_string) - 1; // Exclude null terminator

    // Specify the directory where results will be saved
    // const std::string output_directory = "./results"; // Change this to your desired directory

    // Create the directory if it doesn't exist
    std::filesystem::create_directories(output_directory);

    // Number of key pairs to generate and use for encryption
    // int num_keys = 1000; // The desired number of keys

    // Encrypt the input data with multiple keys and save results
    encrypt_with_multiple_keys(input_data, input_length, num_keys, output_directory);

    std::cout << "Encrypted data with " << num_keys << " RSA key pairs in directory: " << output_directory << std::endl;

    return 0;
}
