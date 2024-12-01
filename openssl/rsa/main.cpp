#include <openssl/rsa.h>
#include <openssl/pem.h>
#include <openssl/err.h>
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

void handleErrors() {
    ERR_print_errors_fp(stderr);
    abort();
}

// RSA* loadPublicKey(const string &fname) {
//     FILE *pub = fopen(fname.c_str(), "rb");
//     if (!pub) {
//         cerr << "Error opening file: " << fname << endl;
//         exit(1);
//     }
//     RSA *rsa = PEM_read_RSA_PUBKEY(pub, NULL, NULL, NULL);
//     fclose(pub);
//     return rsa;
// }

RSA* loadPrivateKey(const string &fname) {
    FILE *pri = fopen(fname.c_str(), "rb");
    if (!pri) {
        cerr << "Error opening file: " << fname << endl;
        exit(1);
    }
    RSA *rsa = PEM_read_RSAPrivateKey(pri, NULL, NULL, NULL);
    fclose(pri);
    return rsa;
}
int rsaDecrypt(RSA *rsa, unsigned char *encrypted_data, int encrypted_data_len, unsigned char *decrypted, const char *events[], std::ofstream &file) {
    // Initialize profiling context
    auto ctx = init_profile(0, events);
    start_profile(ctx);
    auto start = std::chrono::high_resolution_clock::now();

    // Perform RSA decryption using OAEP padding
    int res0 = RSA_private_decrypt(encrypted_data_len, encrypted_data, decrypted, rsa, RSA_PKCS1_OAEP_PADDING);

    // Stop profiling and capture end time
    auto end = std::chrono::high_resolution_clock::now();
    pref_result_t *res = stop_profile2(ctx);

    // Log the profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << res[i].name << ":" << res[i].result << "\n";
    }

    // Log execution time in nanoseconds
    auto duration = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
    file << "execution_time :" << duration << "\n";

    return res0;
}

int rsaEncrypt(RSA *rsa, unsigned char *data, int data_len, unsigned char *encrypted, const char *events[], ofstream &file) {
    ctx = init_profile(0, events);
    start_profile(ctx);
    auto start = chrono::high_resolution_clock::now();

    int res0 = RSA_public_encrypt(data_len, data, encrypted, rsa, RSA_PKCS1_OAEP_PADDING);

    auto end = chrono::high_resolution_clock::now();
    pref_result_t *res = stop_profile2(ctx);

    // Log the profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << res[i].name << ":" << res[i].result << "\n";
    }
    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    file << "execution_time :" << duration << "\n";

    return res0;
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

    // Check for required arguments and handle missing required arguments here if needed
    if (args.find("input") == args.end()) {
        cerr << "Error: Missing required argument --input\n";
        exit(1);
    }
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

    if (argc < 5) {
        cerr << "Error: Arguments less than 4.\n";
        cerr << "Usage: ./main private_key_file_name public_key_file_name input_file_name output_file_name\n";
        return 1;
    }
    
    map<string, string> args = parseArgs(argc, argv);

    string private_key_fname = args["private_key"]; // argv[1];
    // string public_key_fname  = args["public_key"];  //argv[2];
    string input_file_name   = args["input"];       //argv[3];
    string output_file_name  = args["output"];      //argv[4];
    // cout<<"inputfile="<<input_file_name<<"\n";
    // cout<<"private_key="<<private_key_fname<<"\n";
    // cout<<"outputfile="<<output_file_name<<"\n";

    // RSA *publicKey = loadPublicKey(public_key_fname);
    RSA *privateKey = loadPrivateKey(private_key_fname);


    std::ofstream profile_file(output_file_name, ios::out | ios::trunc);
    if (!profile_file) {
        cerr << "Error opening output file: " << output_file_name << endl;
        return 1;
    }
    int size = total_events;
    
    std::ifstream encrypted_file(input_file_name, std::ios::binary);
    if (!encrypted_file.is_open()) {
        std::cerr << "Error: Unable to open encrypted file." << std::endl;
        RSA_free(privateKey);
        return 1;
    }
    std::vector<unsigned char> encrypted_data((std::istreambuf_iterator<char>(encrypted_file)),
                                               std::istreambuf_iterator<char>());
    
    // Prepare buffer for decrypted data
    std::vector<unsigned char> decrypted_data(RSA_size(privateKey));

    /** Encryption */

    // Process groups of 3 events
    for (int i = 0; i < size - 2; i += 3) {
        vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2],NULL};
        // int encrypted_length = rsaEncrypt(publicKey, message, strlen((char*)message), encrypted, events.data(), file);
        int decrypted_len = rsaDecrypt(privateKey, encrypted_data.data(), encrypted_data.size(),
                                   decrypted_data.data(), events.data(), profile_file);
        if (decrypted_len == -1) {
            handleErrors();
        }
    }

    // Handle remaining elements if not multiple of 3
    if (size % 3 != 0) {
        int remaining = size % 3;
        vector<const char*> events(remaining+1);
    
        for (int i = 0; i < remaining; ++i) {
            events[i] = gen_events__[size - remaining + i];
            cout << "event-" << i << ": " << events[i] << endl;
        }
        events[remaining]=NULL;
        // int encrypted_length = rsaEncrypt(publicKey, message, strlen((char*)message), encrypted, events.data(), file);
        int decrypted_len = rsaDecrypt(privateKey, encrypted_data.data(), encrypted_data.size(),
                                   decrypted_data.data(), events.data(), profile_file);
        if (decrypted_len == -1) {
            handleErrors();
        }
    }

    encrypted_file.close();
    profile_file.close();    
    // RSA_free(publicKey);
    RSA_free(privateKey);

    return 0;
}



