#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <gcrypt.h>
#include <filesystem>
#include <map>

using namespace std;

#define NEED_LIBGCRYPT_VERSION "1.8.11"

// Initialize libgcrypt
void initialize_libgcrypt()
{
    if (!gcry_check_version(NEED_LIBGCRYPT_VERSION))
    {
        fprintf(stderr, "libgcrypt is too old (need %s, have %s)\n",
                NEED_LIBGCRYPT_VERSION, gcry_check_version(NULL));
        exit(2);
    }
    gcry_control(GCRYCTL_SUSPEND_SECMEM_WARN);
    gcry_control(GCRYCTL_INIT_SECMEM, 16384, 0);
    gcry_control(GCRYCTL_RESUME_SECMEM_WARN);
    gcry_control(GCRYCTL_INITIALIZATION_FINISHED, 0);

    if (!gcry_control(GCRYCTL_INITIALIZATION_FINISHED_P))
    {
        fputs("libgcrypt has not been initialized\n", stderr);
        abort();
    }
}

// Generate ElGamal key pair
gcry_sexp_t generate_elgamal_keypair(unsigned int nbits)
{
    gcry_error_t err;
    gcry_sexp_t params;
    gcry_sexp_t keypair;

    err = gcry_sexp_build(&params, NULL, "(genkey (elg (nbits %u)))", nbits);
    if (err)
    {
        cerr << "Failed to build S-expression: " << gcry_strerror(err) << endl;
        exit(1);
    }

    err = gcry_pk_genkey(&keypair, params);
    gcry_sexp_release(params);

    if (err)
    {
        cerr << "Failed to generate ElGamal key pair: " << gcry_strerror(err) << endl;
        exit(1);
    }

    return keypair;
}

// Encrypt data using ElGamal
gcry_sexp_t elgamal_encrypt_data(gcry_sexp_t pubkey, unsigned char *data, size_t data_length)
{
    gcry_error_t err;
    gcry_mpi_t mpi_data;
    gcry_sexp_t data_sexp;
    gcry_sexp_t ciphertext;

    err = gcry_mpi_scan(&mpi_data, GCRYMPI_FMT_USG, data, data_length, NULL);
    if (err)
    {
        cerr << "Failed to create MPI from data: " << gcry_strerror(err) << endl;
        exit(1);
    }

    err = gcry_sexp_build(&data_sexp, NULL, "(data (flags raw) (value %m))", mpi_data);
    gcry_mpi_release(mpi_data);
    if (err)
    {
        cerr << "Failed to build data S-expression: " << gcry_strerror(err) << endl;
        exit(1);
    }

    err = gcry_pk_encrypt(&ciphertext, data_sexp, pubkey);
    gcry_sexp_release(data_sexp);

    if (err)
    {
        cerr << "Encryption failed: " << gcry_strerror(err) << endl;
        exit(1);
    }

    return ciphertext;
}

// Decrypt data using ElGamal
string elgamal_decrypt_data(gcry_sexp_t privkey, gcry_sexp_t ciphertext)
{
    gcry_error_t err;
    gcry_sexp_t plaintext_sexp;
    gcry_mpi_t mpi_plaintext;

    err = gcry_pk_decrypt(&plaintext_sexp, ciphertext, privkey);
    if (err)
    {
        cerr << "Decryption failed: " << gcry_strerror(err) << endl;
        exit(1);
    }

    mpi_plaintext = gcry_sexp_nth_mpi(plaintext_sexp, 0, GCRYMPI_FMT_USG);
    gcry_sexp_release(plaintext_sexp);

    if (!mpi_plaintext)
    {
        cerr << "Failed to extract plaintext MPI" << endl;
        exit(1);
    }

    size_t plaintext_size = (gcry_mpi_get_nbits(mpi_plaintext) + 7) / 8;
    vector<unsigned char> plaintext_buffer(plaintext_size);

    err = gcry_mpi_print(GCRYMPI_FMT_USG, plaintext_buffer.data(), plaintext_size, NULL, mpi_plaintext);
    gcry_mpi_release(mpi_plaintext);

    if (err)
    {
        cerr << "Failed to convert MPI to plaintext: " << gcry_strerror(err) << endl;
        exit(1);
    }

    return string(plaintext_buffer.begin(), plaintext_buffer.end());
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

// Function to encrypt input data with 'n' different ElGamal keys and save results
void encrypt_with_multiple_keys(unsigned char *input_data, size_t input_length, int n, const string &directory)
{
    string original_input((char *)input_data, input_length);

    for (int i = 1; i <= n; ++i)
    {
        unsigned int nbits = 2048;
        gcry_sexp_t keypair = generate_elgamal_keypair(nbits);

        gcry_sexp_t pubkey = gcry_sexp_find_token(keypair, "public-key", 0);
        gcry_sexp_t privkey = gcry_sexp_find_token(keypair, "private-key", 0);

        gcry_sexp_t ciphertext = elgamal_encrypt_data(pubkey, input_data, input_length);

        string pubkey_filename = directory + "/public_key_" + to_string(i) + ".pem";
        string privkey_filename = directory + "/private_key_" + to_string(i) + ".pem";
        string ciphertext_filename = directory + "/encrypted_" + to_string(i) + ".bin";

        export_key_to_file(pubkey, pubkey_filename);
        export_key_to_file(privkey, privkey_filename);
        save_ciphertext_to_file(ciphertext, ciphertext_filename);

        string decrypted_plaintext = elgamal_decrypt_data(privkey, ciphertext);

        if (original_input == decrypted_plaintext)
        {
            // cout << "Decryption succeeded for key " << i << endl;
        }
        else
        {
            cerr << "Decryption failed for key " << i << endl;
        }

        gcry_sexp_release(keypair);
        gcry_sexp_release(pubkey);
        gcry_sexp_release(privkey);
        gcry_sexp_release(ciphertext);

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
    const string output_directory = args["outd"];
    int num_keys = stoi(args["nkeys"]);

    unsigned char input_string[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";
    unsigned char *input_data = input_string;
    size_t input_length = sizeof(input_string) - 1;

    filesystem::create_directories(output_directory);

    encrypt_with_multiple_keys(input_data, input_length, num_keys, output_directory);

    cout << "Encrypted data with " << num_keys << " ElGamal key pairs in directory: " << output_directory << endl;

    return 0;
}
