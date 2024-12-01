#include <sodium.h>
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

void load_public_key(const std::string &filename, unsigned char *public_key) {
    std::ifstream pub_file(filename, std::ios::binary);
    if (!pub_file.is_open()) {
        std::cerr << "Error opening public key file: " << filename << std::endl;
        exit(1);
    }
    pub_file.read((char *)public_key, crypto_box_PUBLICKEYBYTES);
    pub_file.close();
}

void load_private_key(const std::string &filename, unsigned char *private_key) {
    std::ifstream priv_file(filename, std::ios::binary);
    if (!priv_file.is_open()) {
        std::cerr << "Error opening private key file: " << filename << std::endl;
        exit(1);
    }
    priv_file.read((char *)private_key, crypto_box_SECRETKEYBYTES);
    priv_file.close();
}

int naclDecrypt(unsigned char *encrypted_data, unsigned long long encrypted_data_len,
                unsigned char *decrypted_data,
                const unsigned char *public_key, const unsigned char *private_key,
                const char *events[], std::ofstream &file) {
    // Initialize profiling context
    auto ctx = init_profile(0, events);
    start_profile(ctx);
    auto start = std::chrono::high_resolution_clock::now();

    // Perform NaCl decryption
    int res = crypto_box_seal_open(decrypted_data, encrypted_data, encrypted_data_len, public_key, private_key);

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

    return res;
}

int main(int argc, char **argv) {
    if (sodium_init() < 0) {
        std::cerr << "Cannot initialize libsodium" << std::endl;
        return 1;
    }

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
    string public_key_fname  = args["public_key"];
    string input_file_name   = args["input"];
    string output_file_name  = args["output"];

    // Load keys
    unsigned char public_key[crypto_box_PUBLICKEYBYTES];
    unsigned char private_key[crypto_box_SECRETKEYBYTES];

    load_public_key(public_key_fname, public_key);
    load_private_key(private_key_fname, private_key);

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

    if (encrypted_data.size() < crypto_box_SEALBYTES) {
        std::cerr << "Error: Encrypted data is too short." << std::endl;
        return 1;
    }

    // Prepare buffer for decrypted data
    unsigned long long decrypted_len = encrypted_data.size() - crypto_box_SEALBYTES;
    std::vector<unsigned char> decrypted_data(decrypted_len);

    // Process groups of 3 events
    for (int i = 0; i < size - 2; i += 3) {
        vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2], NULL};
        int res = naclDecrypt(encrypted_data.data(), encrypted_data.size(), decrypted_data.data(),
                              public_key, private_key, events.data(), profile_file);
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

        int res = naclDecrypt(encrypted_data.data(), encrypted_data.size(), decrypted_data.data(),
                              public_key, private_key, events.data(), profile_file);
        if (res != 0) {
            std::cerr << "Decryption failed\n";
            return 1;
        }
    }

    profile_file.close();

    return 0;
}
