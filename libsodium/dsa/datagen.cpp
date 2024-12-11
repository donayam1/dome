#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <filesystem> // Requires C++17
#include <map>
#include <cstring>
#include <cstdlib>
#include <sodium.h>

using namespace std;

// // A simple die function to mimic snippet's behavior
// static void die(const char *fmt, const char *msg = "")
// {
//     cerr << "Fatal error: " << fmt << msg << endl;
//     exit(1);
// }

// Initialize libsodium
void initialize_libsodium()
{
    if (sodium_init() < 0)
    {
        cerr << "Failed to initialize libsodium" << endl;
        exit(1);
    }
}

// Save binary data to a file
void save_to_file(const vector<unsigned char> &data, const string &filename)
{
    ofstream outfile(filename, ios::binary);
    if (!outfile)
    {
        cerr << "Failed to open file for writing: " << filename << endl;
        exit(1);
    }
    outfile.write(reinterpret_cast<const char *>(data.data()), data.size());
    outfile.close();
}

// Load binary data from a file
vector<unsigned char> load_from_file(const string &filename)
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
        cerr << "Failed to read from file: " << filename << endl;
        exit(1);
    }
    infile.close();
    return buffer;
}

// Generate an Ed25519 key pair
void generate_key_pair(vector<unsigned char> &public_key, vector<unsigned char> &private_key)
{
    public_key.resize(crypto_sign_PUBLICKEYBYTES);
    private_key.resize(crypto_sign_SECRETKEYBYTES);
    crypto_sign_keypair(public_key.data(), private_key.data());
}

// Sign data using Ed25519
vector<unsigned char> sign_data(const vector<unsigned char> &private_key, const unsigned char *data, size_t data_length)
{
    vector<unsigned char> signature(crypto_sign_BYTES);
    crypto_sign_detached(signature.data(), nullptr, data, data_length, private_key.data());
    return signature;
}

// Verify signature using Ed25519
bool verify_signature(const vector<unsigned char> &public_key, const unsigned char *data, size_t data_length, const vector<unsigned char> &signature)
{
    return crypto_sign_verify_detached(signature.data(), data, data_length, public_key.data()) == 0;
}

// Sign input data with 'n' different keys and verify them
void sign_with_multiple_keys(const unsigned char *input_data, size_t input_length, int n, const string &directory)
{
    for (int i = 1; i <= n; ++i)
    {
        vector<unsigned char> public_key, private_key;
        generate_key_pair(public_key, private_key);

        // Sign the input data
        vector<unsigned char> signature = sign_data(private_key, input_data, input_length);
        bool valid = verify_signature(public_key, input_data, input_length, signature);
        if (valid)
        {
            // cout << "Signature verification succeeded for key " << i << "." << endl;
        }
        else
        {
            cerr << "Signature verification failed for key " << i << "." << endl;
            continue;
        }

        // Construct filenames
        string pubkey_filename = directory + "/public_key_" + to_string(i) + ".pem";
        string privkey_filename = directory + "/private_key_" + to_string(i) + ".pem";
        // string signature_filename = directory + "/signature_" + to_string(i) + ".bin";

        // Save keys and signature to files
        save_to_file(public_key, pubkey_filename);
        save_to_file(private_key, privkey_filename);
        // save_to_file(signature, signature_filename);

        if (i % 100 == 0)
        {
            cout << "Processed " << i << " keys..." << endl;
        }
    }
}

// Parse command-line arguments
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
    initialize_libsodium();

    map<string, string> args = parseArgs(argc, argv);

    if (args.find("outd") == args.end() || args.find("nkeys") == args.end())
    {
        cerr << "Usage: " << argv[0] << " --outd output_directory --nkeys number_of_keys" << endl;
        exit(1);
    }

    const string output_directory = args["outd"];
    int num_keys = atoi(args["nkeys"].c_str());

    // Input data to sign
    unsigned char input_string[] =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.";
    unsigned char *input_data = input_string;
    size_t input_length = sizeof(input_string) - 1; // Exclude null terminator

    // Create directory if it doesn't exist
    std::filesystem::create_directories(output_directory);

    // Sign and verify with multiple keys
    sign_with_multiple_keys(input_data, input_length, num_keys, output_directory);

    cout << "Signed and verified data with " << num_keys << " Ed25519 key pairs in directory: " << output_directory << endl;

    return 0;
}
