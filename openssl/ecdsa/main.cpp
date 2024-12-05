#include <openssl/dsa.h>
#include <openssl/pem.h>
#include <openssl/err.h>
#include <openssl/sha.h>
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
    exit(1); // Use exit instead of abort to allow destructors to run
}

DSA* loadPrivateKey0(const string &fname) {
    FILE *pri = fopen(fname.c_str(), "rb");
    if (!pri) {
        cerr << "Error opening file: " << fname << endl;
        exit(1);
    }
    DSA *dsa = PEM_read_DSAPrivateKey(pri, NULL, NULL, NULL);
    fclose(pri);
    return dsa;
}
EVP_PKEY* loadPrivateKey(const string &fname) {
    FILE *pri = fopen(fname.c_str(), "rb");
    if (!pri) {
        cerr << "Error opening file: " << fname << endl;
        exit(1);
    }
    EVP_PKEY *pkey = PEM_read_PrivateKey(pri, NULL, NULL, NULL);
    fclose(pri);
    if (!pkey) {
        cerr << "Error reading private key" << endl;
        handleErrors();
    }
    return pkey;
}

int dsaSign0(DSA *dsa, unsigned char *data, int data_len, unsigned char *signature, unsigned int *sig_len, const char *events[], std::ofstream &file) {
    // Initialize profiling context
    auto ctx = init_profile(0, events);
    start_profile(ctx);
    auto start = std::chrono::high_resolution_clock::now();

    // Hash the data
    unsigned char hash[SHA256_DIGEST_LENGTH];
    if (!SHA256(data, data_len, hash)) {
        cerr << "Error in SHA256" << endl;
        return -1;
    }

    // Perform DSA signature
    int res0 = DSA_sign(0, hash, SHA256_DIGEST_LENGTH, signature, sig_len, dsa);
    std::cout << "DSA_sign return value: " << res0 << std::endl;
    if (res0 != 1) {
        handleErrors();
    }
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
#include <openssl/evp.h>

int dsaSign(EVP_PKEY *pkey, unsigned char *data, size_t data_len, unsigned char **signature, size_t *sig_len, const char *events[], std::ofstream &file) {
    // Initialize profiling context
    auto ctx = init_profile(0, events);
    start_profile(ctx);
    auto start = std::chrono::high_resolution_clock::now();

    // Create and initialize the context
    EVP_MD_CTX *mdctx = EVP_MD_CTX_new();
    if (mdctx == NULL) {
        handleErrors();
    }

    // Initialize the signing operation
    if (1 != EVP_DigestSignInit(mdctx, NULL, EVP_sha256(), NULL, pkey)) {
        handleErrors();
    }

    // Update the context with the data
    if (1 != EVP_DigestSignUpdate(mdctx, data, data_len)) {
        handleErrors();
    }

    // Finalize the signature
    // First call with NULL to determine the required buffer length
    if (1 != EVP_DigestSignFinal(mdctx, NULL, sig_len)) {
        handleErrors();
    }

    // Allocate memory for the signature based on the length
    *signature = (unsigned char *)OPENSSL_malloc(*sig_len);
    if (*signature == NULL) {
        handleErrors();
    }

    // Obtain the signature
    if (1 != EVP_DigestSignFinal(mdctx, *signature, sig_len)) {
        handleErrors();
    }

    // Clean up
    EVP_MD_CTX_free(mdctx);

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

    return 1;
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
        cerr << "Usage: ./main --private_key private_key_file_name --input input_file_name --output output_file_name\n";
        return 1;
    }
    
    map<string, string> args = parseArgs(argc, argv);

    string private_key_fname = args["private_key"];
    string input_file_name   = args["input"];
    string output_file_name  = args["output"];

    // DSA *privateKey = loadPrivateKey(private_key_fname);
    EVP_PKEY *privateKey = loadPrivateKey(private_key_fname);

    std::ofstream profile_file(output_file_name, ios::out | ios::trunc);
    if (!profile_file) {
        cerr << "Error opening output file: " << output_file_name << endl;
        return 1;
    }
    int size = total_events;
    
    std::ifstream data_file(input_file_name, std::ios::binary);
    if (!data_file.is_open()) {
        std::cerr << "Error: Unable to open input file." << std::endl;
        EVP_PKEY_free(privateKey);
        return 1;
    }
    unsigned char data[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue.";
    // std::vector<unsigned char> data = 
    // ((std::istreambuf_iterator<char>(data_file)),
    //                                  std::istreambuf_iterator<char>());
    
    // // Prepare buffer for signature
    // unsigned int sig_len = 0;
    // std::vector<unsigned char> signature(DSA_size(privateKey));

    /** DSA Signature */

    unsigned char *signature = NULL;
    size_t sig_len = 0;

    // Process groups of 3 events
    for (int i = 0; i < size - 2; i += 3) {
        vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2], NULL};
        int res = dsaSign(privateKey, data, strlen((char*)data), &signature, &sig_len, events.data(), profile_file);
        if (res != 1) {
            handleErrors();
        }
        OPENSSL_free(signature);
        signature = NULL;
        sig_len = 0;
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
        int res = dsaSign(privateKey, data, strlen((char*)data), &signature, &sig_len, events.data(), profile_file);
        if (res != 1) {
            handleErrors();
        }
        OPENSSL_free(signature);
        signature = NULL;
        sig_len = 0;
    }

    data_file.close();
    profile_file.close();
    EVP_PKEY_free(privateKey);

    return 0;
}
