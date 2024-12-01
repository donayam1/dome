#include <openssl/aes.h>
#include <openssl/rand.h>
#include <openssl/err.h>
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
#include <iostream>
#include <fstream>
#include <iomanip>

using namespace std;

const int AES_KEYLENGTH = 256;
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

void handleErrors() {
    ERR_print_errors_fp(stderr);
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
    // cout<<"key="<<hex_key<<" length="<<hex_key.length()<<"\n";
    // Allocate memory for the key and convert hex to bytes
    unsigned char *key = new unsigned char[key_length];
    if (!hexStringToBytes(hex_key, key, key_length)) {
        cerr << "Invalid hex key in file: " << filename << endl;
        delete[] key;
        return nullptr;
    }

    return key;
}


void aesEncrypt(const unsigned char* data, int data_len, unsigned char* encrypted, int &encrypted_len, const char *events[], ofstream &file) {
    AES_KEY enc_key;
    AES_set_encrypt_key(aes_key, AES_KEYLENGTH, &enc_key);

    ctx = init_profile(0, events);
    start_profile(ctx);
    
    auto start = chrono::high_resolution_clock::now();
    AES_cbc_encrypt(data, encrypted, data_len, &enc_key, iv, AES_ENCRYPT);
    auto end = chrono::high_resolution_clock::now();

    pref_result_t *res = stop_profile2(ctx);

    // Log profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << res[i].name << ":" << res[i].result << "\n";
    }
    
    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    file << "encryption_time:" << duration << "\n";

    encrypted_len = data_len;
}

void aesDecrypt(const unsigned char* encrypted, int encrypted_len, unsigned char* decrypted, int &decrypted_len, const char *events[], ofstream &file) {
    AES_KEY dec_key;
    AES_set_decrypt_key(aes_key, AES_KEYLENGTH, &dec_key);

    ctx = init_profile(0, events);
    start_profile(ctx);

    auto start = chrono::high_resolution_clock::now();
    AES_cbc_encrypt(encrypted, decrypted, encrypted_len, &dec_key, iv, AES_DECRYPT);
    auto end = chrono::high_resolution_clock::now();

    pref_result_t *res = stop_profile2(ctx);

    // Log profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << res[i].name << ":" << res[i].result << "\n";
    }

    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    file << "decryption_time:" << duration << "\n";

    decrypted_len = encrypted_len;
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
    if (args.find("output") == args.end()) {
        cerr << "Error: Missing required argument --output\n";
        exit(1);
    }

    return args;
}



int main(int argc, char **argv) {
    int ret = pfm_initialize();
    if (ret != PFM_SUCCESS) {
        cerr << "Cannot initialize library: " << pfm_strerror(ret) << endl;
        return 1;
    }

    if (argc < 3) {
        cerr << "Error: Arguments less than 2.\n";
        cerr << "Usage: ./main input_file_name output_file_name\n";
        return 1;
    }
    
    map<string, string> args = parseArgs(argc, argv);
    // string input_file_name = args["input"];
    string output_file_name = args["output"];
    string key_file_name = args["private_key"];

    // string input_file_name = argv[1];
    // string output_file_name = argv[2];

    // Generate AES key and IV
    unsigned char *aes_key = readKeyFromFile(key_file_name, 32);
    if (!(aes_key)) {
        cerr << "Error generating AES key.\n";
        handleErrors();
    }
    if (!RAND_bytes(iv, AES_BLOCK_SIZE)) {
        cerr << "Error generating AES IV.\n";
        handleErrors();
    }

    unsigned char message[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue.";
    unsigned char encrypted[256];
    unsigned char decrypted[256];
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

    // cout << "Original message: " << message << endl;
    // cout << "Decrypted message: " << decrypted << endl;

    return 0;
}
