#include <gcrypt.h>
#include <stdio.h>
#include <perf.h>
#include <string.h>
#include <perfmon/pfmlib_perf_event.h>
#include <perf_util.h>
#include <chrono>
#include <iostream>
#include <string>
#include <fstream>
#include <vector>
#include <map>

using namespace std;

profiling_context_t *ctx;

const int total_events = 21;
const int event_group = 3;

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

    // Check for required arguments
    if (args.find("input") == args.end()) {
        cerr << "Error: Missing required argument --input\n";
        exit(1);
    }
    if (args.find("output") == args.end()) {
        cerr << "Error: Missing required argument --output\n";
        exit(1);
    }
    if (args.find("public_key") == args.end()) {
        cerr << "Error: Missing required argument --public_key\n";
        exit(1);
    }
    if (args.find("private_key") == args.end()) {
        cerr << "Error: Missing required argument --private_key\n";
        exit(1);
    }

    return args;
}

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

// Function to load a key from a file
gcry_sexp_t load_key(const std::string &filename)
{
    std::ifstream key_file(filename, std::ios::binary);
    if (!key_file.is_open()) {
        std::cerr << "Error opening key file: " << filename << std::endl;
        exit(1);
    }

    // Read the entire file into a string
    std::string key_str((std::istreambuf_iterator<char>(key_file)),
                         std::istreambuf_iterator<char>());
    key_file.close();

    // Convert the string to an S-expression
    gcry_error_t err;
    gcry_sexp_t key_sexp;

    err = gcry_sexp_new(&key_sexp, key_str.data(), key_str.size(), 0);
    if (err) {
        std::cerr << "Failed to create S-expression from key file: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    return key_sexp;
}

// Function to decrypt data using ECC
std::vector<unsigned char> ecc_decrypt_data(gcry_sexp_t priv_key, const std::vector<unsigned char> &encrypted_data)
{
    gcry_error_t err;
    gcry_sexp_t ciphertext_sexp;
    gcry_sexp_t plaintext_sexp;

    // Convert encrypted data to S-expression
    err = gcry_sexp_new(&ciphertext_sexp, encrypted_data.data(), encrypted_data.size(), 0);
    if (err) {
        std::cerr << "Failed to create S-expression from encrypted data: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    // Decrypt the data
    err = gcry_pk_decrypt(&plaintext_sexp, ciphertext_sexp, priv_key);
    if (err) {
        std::cerr << "Decryption failed: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    // Extract plaintext data
    gcry_sexp_t data_sexp = gcry_sexp_find_token(plaintext_sexp, "value", 0);
    if (!data_sexp) {
        std::cerr << "Failed to find 'value' in plaintext S-expression" << std::endl;
        exit(1);
    }

    size_t plaintext_len;
    const char *plaintext_buf = gcry_sexp_nth_data(data_sexp, 1, &plaintext_len);

    if (!plaintext_buf) {
        std::cerr << "Failed to extract plaintext data" << std::endl;
        exit(1);
    }
    std::vector<unsigned char> decrypted_data(plaintext_buf, plaintext_buf + plaintext_len);

    // Clean up
    gcry_sexp_release(ciphertext_sexp);
    gcry_sexp_release(plaintext_sexp);
    gcry_sexp_release(data_sexp);

    return decrypted_data;
}

int eccDecrypt(const std::vector<unsigned char> &encrypted_data,
               std::vector<unsigned char> &decrypted_data,
               gcry_sexp_t priv_key,
               const char *events[], std::ofstream &file) {
    // Initialize profiling context
    auto ctx = init_profile(0, events);
    start_profile(ctx);
    auto start = std::chrono::high_resolution_clock::now();

    // Perform ECC decryption
    decrypted_data = ecc_decrypt_data(priv_key, encrypted_data);
    for (unsigned char byte : decrypted_data) {
        std::cout << static_cast<char>(byte);
    }
   
    // Stop profiling and capture end time
    auto end = std::chrono::high_resolution_clock::now();
    pref_result_t *prof_res = stop_profile2(ctx);

    // Log the profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << prof_res[i].name << ":" << prof_res[i].result << "\n";
    }

    // Log execution time in nanoseconds
    auto duration = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
    file << "execution_time :" << duration << "\n";

    return 0; // Success
}

int main(int argc, char **argv) {
    initialize_libgcrypt();

    int ret = pfm_initialize();
    if (ret != PFM_SUCCESS) {
        cerr << "Cannot initialize library: " << pfm_strerror(ret) << endl;
        return 1;
    }

    if (argc < 9) {
        cerr << "Error: Missing arguments.\n";
        cerr << "Usage: ./main --private_key private_key_file --public_key public_key_file --input input_file --output output_file\n";
        return 1;
    }

    map<string, string> args = parseArgs(argc, argv);

    string private_key_fname = args["private_key"];
    string public_key_fname  = args["public_key"]; // Not used in decryption
    string input_file_name   = args["input"];
    string output_file_name  = args["output"];

    // Load private key
    gcry_sexp_t priv_key = load_key(private_key_fname);

    std::ofstream profile_file(output_file_name, ios::out | ios::trunc);
    if (!profile_file) {
        cerr << "Error opening output file: " << output_file_name << endl;
        return 1;
    }
    int size = total_events;

    std::ifstream encrypted_file(input_file_name, std::ios::binary);
    if (!encrypted_file.is_open()) {
        std::cerr << "Error: Unable to open encrypted file." << std::endl;
        return 1;
    }
    std::vector<unsigned char> encrypted_data((std::istreambuf_iterator<char>(encrypted_file)),
                                              std::istreambuf_iterator<char>());
    encrypted_file.close();

    // Prepare buffer for decrypted data
    std::vector<unsigned char> decrypted_data;

    // Process groups of 3 events
    for (int i = 0; i < size - 2; i += 3) {
        vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2], NULL};
        int res = eccDecrypt(encrypted_data, decrypted_data, priv_key, events.data(), profile_file);
        if (res != 0) {
            std::cerr << "Decryption failed\n";
            return 1;
        }
    }

    // Handle remaining elements if not multiple of 3
    if (size % 3 != 0) {
        int remaining = size % 3;
        vector<const char*> events(remaining + 1);

        for (int i = 0; i < remaining; ++i) {
            events[i] = gen_events__[size - remaining + i];
            cout << "event-" << i << ": " << events[i] << endl;
        }
        events[remaining] = NULL;

        int res = eccDecrypt(encrypted_data, decrypted_data, priv_key, events.data(), profile_file);
        if (res != 0) {
            std::cerr << "Decryption failed\n";
            return 1;
        }
    }

    profile_file.close();

    // Optionally, you can save the decrypted data to a file or process it as needed
    // For example, to save to "decrypted_output.bin":
    // std::ofstream decrypted_file("decrypted_output.bin", std::ios::binary);
    // decrypted_file.write(reinterpret_cast<const char*>(decrypted_data.data()), decrypted_data.size());
    // decrypted_file.close();

    // Clean up
    gcry_sexp_release(priv_key);

    return 0;
}
