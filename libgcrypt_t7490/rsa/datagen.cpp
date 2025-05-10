#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <gcrypt.h>
#include <filesystem> // Requires C++17 or later
#include <map>
using namespace std;

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


// Function to initialize libgcrypt
void initialize_libgcrypt0()
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

// Function to import a key from a file
gcry_sexp_t import_key_from_file(const std::string& filename)
{
    gcry_error_t err;
    std::ifstream infile(filename, std::ios::binary | std::ios::ate);
    if (!infile)
    {
        std::cerr << "Failed to open file for reading: " << filename << std::endl;
        exit(1);
    }

    std::streamsize size = infile.tellg();
    infile.seekg(0, std::ios::beg);
    std::vector<char> buffer(size);
    if (!infile.read(buffer.data(), size))
    {
        std::cerr << "Failed to read key from file: " << filename << std::endl;
        exit(1);
    }
    infile.close();

    gcry_sexp_t key;
    err = gcry_sexp_new(&key, buffer.data(), buffer.size(), 1);
    if (err)
    {
        std::cerr << "Failed to create S-expression from key buffer: " << gcry_strerror(err) << std::endl;
        exit(1);
    }
    return key;
}

// Function to read ciphertext from a file and create an S-expression
gcry_sexp_t read_ciphertext_from_file(const std::string& filename)
{
    gcry_error_t err;
    std::ifstream infile(filename, std::ios::binary | std::ios::ate);
    if (!infile)
    {
        std::cerr << "Failed to open file for reading: " << filename << std::endl;
        exit(1);
    }

    std::streamsize size = infile.tellg();
    infile.seekg(0, std::ios::beg);
    std::vector<char> buffer(size);
    if (!infile.read(buffer.data(), size))
    {
        std::cerr << "Failed to read ciphertext from file: " << filename << std::endl;
        exit(1);
    }
    infile.close();

    gcry_sexp_t ciphertext;
    err = gcry_sexp_new(&ciphertext, buffer.data(), buffer.size(), 1);
    if (err)
    {
        std::cerr << "Failed to create S-expression from ciphertext buffer: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    return ciphertext;
}

// Function to generate RSA key pair
gcry_sexp_t generate_rsa_keypair(unsigned int nbits)
{
    gcry_error_t err;
    gcry_sexp_t params;
    gcry_sexp_t keypair;

    err = gcry_sexp_build(&params, NULL, "(genkey (rsa (nbits %u)))", nbits);
    if (err)
    {
        std::cerr << "Failed to build S-expression: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

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

    key_buffer_length = gcry_sexp_sprint(key, GCRYSEXP_FMT_CANON, NULL, 0);
    key_buffer = (char*)malloc(key_buffer_length);
    if (!key_buffer)
    {
        std::cerr << "Failed to allocate memory for key buffer" << std::endl;
        exit(1);
    }

    gcry_sexp_sprint(key, GCRYSEXP_FMT_CANON, key_buffer, key_buffer_length);

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

    ciphertext_buffer_length = gcry_sexp_sprint(ciphertext, GCRYSEXP_FMT_CANON, NULL, 0);
    ciphertext_buffer = (char*)malloc(ciphertext_buffer_length);

    if (!ciphertext_buffer)
    {
        std::cerr << "Failed to allocate memory for ciphertext buffer" << std::endl;
        exit(1);
    }

    gcry_sexp_sprint(ciphertext, GCRYSEXP_FMT_CANON, ciphertext_buffer, ciphertext_buffer_length);

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

// Function to encrypt data
gcry_sexp_t rsa_encrypt_data(gcry_sexp_t pubkey, unsigned char* data, size_t data_length)
{
    gcry_error_t err;
    gcry_mpi_t mpi_data;
    gcry_sexp_t data_sexp;
    gcry_sexp_t ciphertext;

    err = gcry_mpi_scan(&mpi_data, GCRYMPI_FMT_USG, data, data_length, NULL);
    if (err)
    {
        std::cerr << "Failed to create MPI from data: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    err = gcry_sexp_build(&data_sexp, NULL, "(data (flags raw) (value %m))", mpi_data);
    gcry_mpi_release(mpi_data);
    if (err)
    {
        std::cerr << "Failed to build data S-expression: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    err = gcry_pk_encrypt(&ciphertext, data_sexp, pubkey);
    gcry_sexp_release(data_sexp);

    if (err)
    {
        std::cerr << "Encryption failed: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    return ciphertext;
}

// Decrypt data
std::string rsa_decrypt_data(gcry_sexp_t privkey, gcry_sexp_t ciphertext)
{
    gcry_error_t err;
    gcry_sexp_t plaintext_sexp;
    gcry_mpi_t mpi_plaintext;

    // Decrypt
    err = gcry_pk_decrypt(&plaintext_sexp, ciphertext, privkey);
    if (err)
    {
        std::cerr << "Decryption failed: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    // Extract the plaintext MPI
    mpi_plaintext = gcry_sexp_nth_mpi(plaintext_sexp, 0, GCRYMPI_FMT_USG);
    gcry_sexp_release(plaintext_sexp);

    if (!mpi_plaintext)
    {
        std::cerr << "Failed to extract plaintext MPI" << std::endl;
        exit(1);
    }

    size_t plaintext_size = (gcry_mpi_get_nbits(mpi_plaintext) + 7) / 8;
    std::vector<unsigned char> plaintext_buffer(plaintext_size);

    err = gcry_mpi_print(GCRYMPI_FMT_USG, plaintext_buffer.data(), plaintext_size, NULL, mpi_plaintext);
    gcry_mpi_release(mpi_plaintext);

    if (err)
    {
        std::cerr << "Failed to convert MPI to plaintext: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    // Convert to string and remove trailing nulls
    std::string plaintext((char*)plaintext_buffer.data(), plaintext_buffer.size());
    while (!plaintext.empty() && plaintext.back() == '\0') {
        plaintext.pop_back();
    }

    return plaintext;
}

// Function to encrypt input data with 'n' different RSA keys and save results
void encrypt_with_multiple_keys(unsigned char* input_data, size_t input_length, int n, const std::string& directory)
{
    std::string original_input((char*)input_data, input_length);
    for (int i = 1; i <= n; ++i)
    {
        unsigned int nbits = 2048;
        gcry_sexp_t keypair = generate_rsa_keypair(nbits);

        gcry_sexp_t pubkey = gcry_sexp_find_token(keypair, "public-key", 0);
        gcry_sexp_t privkey = gcry_sexp_find_token(keypair, "private-key", 0);

        gcry_sexp_t ciphertext = rsa_encrypt_data(pubkey, input_data, input_length);

        std::string pubkey_filename = directory + "/public_key_" + std::to_string(i) + ".pem";
        std::string privkey_filename = directory + "/private_key_" + std::to_string(i) + ".pem";
        std::string ciphertext_filename = directory + "/encrypted_" + std::to_string(i) + ".bin";

        export_keypair_to_files(pubkey, privkey, pubkey_filename, privkey_filename);
        save_ciphertext_to_file(ciphertext, ciphertext_filename);
        std::string decrypted_plaintext = rsa_decrypt_data(privkey, ciphertext);

        if (original_input == decrypted_plaintext) {            
        } else {
            std::cout << "The decrypted plaintext does NOT match the original input string." << std::endl;
        }

        gcry_sexp_release(keypair);
        gcry_sexp_release(pubkey);
        gcry_sexp_release(privkey);
        gcry_sexp_release(ciphertext);

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
        if (arg.rfind("--", 0) == 0 && i + 1 < argc) {
            string key = arg.substr(2); 
            args[key] = argv[++i];      
        } else {
            cerr << "Error: Missing value for argument " << arg << endl;
            exit(1);
        }
    }
    return args;
}

int main(int argc,char*argv[])
{
    initialize_libgcrypt();
    map<string, string> args = parseArgs(argc, argv);
    const std::string output_directory  = args["outd"];
    int num_keys  = atoi(args["nkeys"].c_str());

    // Input data to encrypt
    unsigned char input_string[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.";
    unsigned char* input_data = input_string;
    size_t input_length = sizeof(input_string) - 1; // Exclude null terminator

    // Create directory if it doesn't exist
    std::filesystem::create_directories(output_directory);

    // Encrypt data with multiple keys
    encrypt_with_multiple_keys(input_data, input_length, num_keys, output_directory);

    std::cout << "Encrypted data with " << num_keys << " RSA key pairs in directory: " << output_directory << std::endl;

    // // If we have generated at least one key, let's decrypt the ciphertext from the first key pair to confirm
    // if (num_keys > 0) {
    //     std::string privkey_filename = output_directory + "/private_key_11.pem";
    //     std::string ciphertext_filename = output_directory + "/encrypted_11.bin";

    //     // Import private key and ciphertext
    //     gcry_sexp_t imported_privkey = import_key_from_file(privkey_filename);
    //     gcry_sexp_t ciphertext = read_ciphertext_from_file(ciphertext_filename);

    //     // Decrypt and print
    //     std::string decrypted_plaintext = rsa_decrypt_data(imported_privkey, ciphertext);
    //     std::cout << "Decrypted plaintext from the first key pair: " << decrypted_plaintext << std::endl;

    //     // Clean up
    //     gcry_sexp_release(imported_privkey);
    //     gcry_sexp_release(ciphertext);
    // }

    return 0;
}
