#include <gcrypt.h>
#include <stdio.h>
#include <string.h>
#include <chrono>
#include <iostream>
#include <fstream>
#include <vector>
#include <perf.h>
#include <perfmon/pfmlib_perf_event.h>
#include <perf_util.h>
#include <map>
#include <sstream>
#include <iomanip>

using namespace std;

const int AES_KEYLENGTH = 256;
#define AES_BLOCK_SIZE 16
unsigned char aes_key[AES_KEYLENGTH / 8];
unsigned char iv[AES_BLOCK_SIZE];

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
    NULL  // Marks the end of the events array
};

// Function to handle errors from Libgcrypt
void handleErrors(const char *msg, gcry_error_t err) {
    fprintf(stderr, "%s: %s / %s\n", msg, gcry_strsource(err), gcry_strerror(err));
    abort();
}

// Function to convert a hex string to bytes and store it in an unsigned char array
bool hexStringToBytes(const string &hex, unsigned char *bytes, size_t bytes_len) {
    if (hex.length() != bytes_len * 2) return false; // Ensure the hex string length matches expected byte size
    for (size_t i = 0; i < bytes_len; ++i) {
        unsigned int byte;
        stringstream ss;
        ss << std::hex << hex.substr(i * 2, 2); // Load two hex characters at a time
        ss >> byte;                             // Convert to a single byte
        bytes[i] = static_cast<unsigned char>(byte);
    }
    return true;
}

// Function to read a single AES key from a file and convert it to an unsigned char array
unsigned char* readKeyFromFile(const string &filename, int key_length) {
    ifstream file(filename);
    if (!file) {
        cerr << "Error opening file: " << filename << endl;
        return nullptr;
    }

    // Read the hex key from the file
    string hex_key;
    getline(file, hex_key);
    file.close();

    // Allocate memory for the key and convert hex to bytes
    unsigned char *key = new unsigned char[key_length];
    if (!hexStringToBytes(hex_key, key, key_length)) {
        cerr << "Invalid hex key in file: " << filename << endl;
        delete[] key;
        return nullptr;
    }

    return key;
}

// Function to pad data using PKCS#7 padding
void padData(const unsigned char* data, int data_len, unsigned char* padded_data, int &padded_len) {
    int padding = AES_BLOCK_SIZE - (data_len % AES_BLOCK_SIZE);
    if (padding == 0) padding = AES_BLOCK_SIZE; // If already a multiple, add an extra block
    memcpy(padded_data, data, data_len);
    memset(padded_data + data_len, padding, padding);
    padded_len = data_len + padding;
}

// Function to unpad data using PKCS#7 padding
void unpadData(const unsigned char* data, int data_len, unsigned char* unpadded_data, int &unpadded_len) {
    if (data_len <= 0) {
        unpadded_len = 0;
        return;
    }
    int padding = data[data_len - 1];
    if (padding <= 0 || padding > AES_BLOCK_SIZE) {
        // Invalid padding
        unpadded_len = data_len;
        memcpy(unpadded_data, data, data_len);
        return;
    }
    unpadded_len = data_len - padding;
    memcpy(unpadded_data, data, unpadded_len);
}

void aesEncrypt(const unsigned char* data, int data_len, unsigned char* encrypted, int &encrypted_len, const char *events[], ofstream &file) {
    gcry_cipher_hd_t handle;
    gcry_error_t err;

    // Open cipher
    err = gcry_cipher_open(&handle, GCRY_CIPHER_AES256, GCRY_CIPHER_MODE_CBC, 0);
    if (err) handleErrors("Error opening cipher", err);

    // Set key
    err = gcry_cipher_setkey(handle, aes_key, AES_KEYLENGTH / 8);
    if (err) handleErrors("Error setting key", err);

    // Set IV
    err = gcry_cipher_setiv(handle, iv, AES_BLOCK_SIZE);
    if (err) handleErrors("Error setting IV", err);

    // Pad data
    unsigned char padded_data[512]; // Ensure it's large enough
    int padded_len;
    padData(data, data_len, padded_data, padded_len);

    ctx = init_profile(0, events);
    start_profile(ctx);

    auto start = chrono::high_resolution_clock::now();
    // Encrypt
    err = gcry_cipher_encrypt(handle, encrypted, padded_len, padded_data, padded_len);
    auto end = chrono::high_resolution_clock::now();

    if (err) handleErrors("Error in encryption", err);

    pref_result_t *res = stop_profile2(ctx);

    // Log profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << res[i].name << ":" << res[i].result << "\n";
    }

    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    file << "encryption_time:" << duration << "\n";

    encrypted_len = padded_len;

    gcry_cipher_close(handle);
}

void aesDecrypt(const unsigned char* encrypted, int encrypted_len, unsigned char* decrypted, int &decrypted_len, const char *events[], ofstream &file) {
    gcry_cipher_hd_t handle;
    gcry_error_t err;

    // Open cipher
    err = gcry_cipher_open(&handle, GCRY_CIPHER_AES256, GCRY_CIPHER_MODE_CBC, 0);
    if (err) handleErrors("Error opening cipher", err);

    // Set key
    err = gcry_cipher_setkey(handle, aes_key, AES_KEYLENGTH / 8);
    if (err) handleErrors("Error setting key", err);

    // Set IV
    err = gcry_cipher_setiv(handle, iv, AES_BLOCK_SIZE);
    if (err) handleErrors("Error setting IV", err);

    unsigned char decrypted_padded[512]; // Ensure it's large enough

    ctx = init_profile(0, events);
    start_profile(ctx);

    auto start = chrono::high_resolution_clock::now();
    // Decrypt
    err = gcry_cipher_decrypt(handle, decrypted_padded, encrypted_len, encrypted, encrypted_len);
    auto end = chrono::high_resolution_clock::now();

    if (err) handleErrors("Error in decryption", err);

    pref_result_t *res = stop_profile2(ctx);

    // Log profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << res[i].name << ":" << res[i].result << "\n";
    }

    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    file << "decryption_time:" << duration << "\n";

    // Unpad data
    int unpadded_len;
    unpadData(decrypted_padded, encrypted_len, decrypted, unpadded_len);
    decrypted_len = unpadded_len;

    gcry_cipher_close(handle);
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

    if (args.find("output") == args.end()) {
        cerr << "Error: Missing required argument --output\n";
        exit(1);
    }

    return args;
}

int main(int argc, char **argv) {
    // Initialize Libgcrypt
    if (!gcry_check_version(GCRYPT_VERSION)) {
        fprintf(stderr, "Libgcrypt version mismatch\n");
        return 1;
    }
    gcry_control(GCRYCTL_INITIALIZATION_FINISHED, 0);

    int ret = pfm_initialize();
    if (ret != PFM_SUCCESS) {
        cerr << "Cannot initialize library: " << pfm_strerror(ret) << endl;
        return 1;
    }

    if (argc < 3) {
        cerr << "Error: Arguments less than 2.\n";
        cerr << "Usage: ./main --output output_file_name --private_key key_file_name\n";
        return 1;
    }

    map<string, string> args = parseArgs(argc, argv);
    string output_file_name = args["output"];
    string key_file_name = args["private_key"];

    // Read AES key from file
    unsigned char *key = readKeyFromFile(key_file_name, AES_KEYLENGTH / 8);
    if (!key) {
        cerr << "Error generating AES key.\n";
        handleErrors("Error generating AES key", 0);
    }
    memcpy(aes_key, key, AES_KEYLENGTH / 8);
    delete[] key;

    // Generate random IV
    gcry_create_nonce(iv, AES_BLOCK_SIZE);

    unsigned char message[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue.";
    unsigned char encrypted[512]; // Adjust size if needed
    unsigned char decrypted[512];
    int encrypted_len, decrypted_len;

    ofstream file(output_file_name, ios::out | ios::trunc);
    if (!file) {
        cerr << "Error opening output file: " << output_file_name << endl;
        return 1;
    }

    int size = total_events;

    // Encrypt with profiling for each group of 3 events
    for (int i = 0; i < size - 2; i += 3) {
        vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2], NULL};
        aesEncrypt(message, strlen((char*)message), encrypted, encrypted_len, events.data(), file);
    }

    // Handle remaining events if not multiple of 3
    if (size % 3 != 0) {
        int remaining = size % 3;
        vector<const char*> events(remaining + 1);
        for (int i = 0; i < remaining; ++i) {
            events[i] = gen_events__[size - remaining + i];
        }
        events[remaining] = NULL;
        aesEncrypt(message, strlen((char*)message), encrypted, encrypted_len, events.data(), file);
    }

    // // Decrypt with profiling for each group of 3 events
    // for (int i = 0; i < size - 2; i += 3) {
    //     vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2], NULL};
    //     aesDecrypt(encrypted, encrypted_len, decrypted, decrypted_len, events.data(), file);
    // }

    // // Handle remaining events if not multiple of 3
    // if (size % 3 != 0) {
    //     int remaining = size % 3;
    //     vector<const char*> events(remaining + 1);
    //     for (int i = 0; i < remaining; ++i) {
    //         events[i] = gen_events__[size - remaining + i];
    //     }
    //     events[remaining] = NULL;
    //     aesDecrypt(encrypted, encrypted_len, decrypted, decrypted_len, events.data(), file);
    // }

    file.close();

    // Optional: Print the original and decrypted messages to verify correctness
    // cout << "Original message: " << message << endl;
    // cout << "Decrypted message: " << decrypted << endl;

    return 0;
}
