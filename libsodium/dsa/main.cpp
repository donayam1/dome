#include <sodium.h>
#include <stdio.h>
#include <string.h>
#include <chrono>
#include <iostream>
#include <fstream>
#include <vector>
#include <map>
#include <sstream>
#include <iomanip>
#include <perfmon/pfmlib_perf_event.h>
#include <perf_util.h>
#include <perf.h>

using namespace std;

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

// Function to initialize libsodium
void initialize_libsodium()
{
    if (sodium_init() < 0)
    {
        cerr << "Failed to initialize libsodium" << endl;
        exit(1);
    }
}

// Function to read a key from a file
vector<unsigned char> read_key(const string &filename)
{
    ifstream infile(filename, ios::binary | ios::ate);
    if (!infile)
    {
        cerr << "Failed to open file for reading: " << filename << endl;
        exit(1);
    }

    streamsize size = infile.tellg();
    infile.seekg(0, ios::beg);
    vector<unsigned char> buffer(size);
    if (!infile.read(reinterpret_cast<char *>(buffer.data()), size))
    {
        cerr << "Failed to read key from file: " << filename << endl;
        exit(1);
    }
    infile.close();
    return buffer;
}

// Function to hash data using SHA-256
vector<unsigned char> hash_data(const unsigned char *data, size_t data_length)
{
    vector<unsigned char> hash(crypto_hash_sha256_BYTES);
    crypto_hash_sha256(hash.data(), data, data_length);
    return hash;
}

// Function to sign data using Ed25519
vector<unsigned char> ed25519_sign(const vector<unsigned char> &privkey, const unsigned char *data, size_t data_length, const char *events[], ofstream &file)
{
    vector<unsigned char> signature(crypto_sign_BYTES);
    // Initialize profiling context
    auto ctx = init_profile(0, events);
    start_profile(ctx);

    auto start = chrono::high_resolution_clock::now();
    crypto_sign_detached(signature.data(), nullptr, data, data_length, privkey.data());
    auto end = chrono::high_resolution_clock::now();

    pref_result_t *prof_res = stop_profile2(ctx);

    // Log the profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << prof_res[i].name << ":" << prof_res[i].result << "\n";
    }


    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    file << "signing_time:" << duration << "\n";

    return signature;
}

// Function to verify an Ed25519 signature
bool verify_signature(const vector<unsigned char> &pubkey, const unsigned char *data, size_t data_length, const vector<unsigned char> &signature)
{
    return crypto_sign_verify_detached(signature.data(), data, data_length, pubkey.data()) == 0;
}

// Function to parse command-line arguments
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

    if (args.find("output") == args.end())
    {
        cerr << "Error: Missing required argument --output\n";
        exit(1);
    }

    return args;
}

int main(int argc, char **argv)
{
    initialize_libsodium();
    int ret = pfm_initialize();
    if (ret != PFM_SUCCESS) {
        cerr << "Cannot initialize library: " << pfm_strerror(ret) << endl;
        return 1;
    } 
    if (argc < 4)
    {
        cerr << "Usage: ./main --output output_file_name --private_key private_key_file_name --public_key public_key_file_name\n";
        return 1;
    }

    map<string, string> args = parseArgs(argc, argv);
    string output_file_name = args["output"];
    string private_key_file_name = args["private_key"];
    string public_key_file_name = args["public_key"];

    // Read keys
    vector<unsigned char> privkey = read_key(private_key_file_name);
    vector<unsigned char> pubkey = read_key(public_key_file_name);

    unsigned char message[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.";
    ofstream file(output_file_name, ios::out | ios::trunc);
    if (!file)
    {
        cerr << "Error opening output file: " << output_file_name << endl;
        return 1;
    }

    int size = total_events;

    for (int i = 0; i < size - 2; i += 3)
    {
        vector<const char *> events = {gen_events__[i], gen_events__[i + 1], gen_events__[i + 2], NULL};
        vector<unsigned char> signature = ed25519_sign(privkey, message, strlen((char *)message), events.data(), file);
        bool valid = verify_signature(pubkey, message, strlen((char *)message), signature);
        if (valid)
        {
            // cout << "Signature verification succeeded for key " << i << "." << endl;
        }
        else
        {
            cerr << "Signature verification failed for key " << i << "." << endl;
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

        vector<unsigned char> signature = ed25519_sign(privkey, message, strlen((char *)message), events.data(), file);
        bool valid = verify_signature(pubkey, message, strlen((char *)message), signature);
        if (valid)
        {
            // cout << "Signature verification succeeded for key " << i << "." << endl;
        }
        else
        {
            cerr << "Signature verification failed for key ."<< endl;
        }
    }


    file.close();
    return 0;
}
