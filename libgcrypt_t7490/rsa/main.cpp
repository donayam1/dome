#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <gcrypt.h>
#include <map>
#include <chrono>

#if ENABLE_GEM5==1
#pragma message("Compiling with gem5 instructions")
#include <gem5/m5ops.h>
#include "m5_mmap.h"

#else 

#include <perf.h>
#include <perfmon/pfmlib_perf_event.h>
#include <perf_util.h>

#endif // ENABLE_GEM5



using namespace std;



#if ENABLE_GEM5==1
#else 
profiling_context_t *ctx;
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
#endif 


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

    // Get the size of the file
    std::streamsize size = infile.tellg();
    infile.seekg(0, std::ios::beg);

    // Read the contents into a buffer
    std::vector<char> buffer(size);
    if (!infile.read(buffer.data(), size))
    {
        std::cerr << "Failed to read key from file: " << filename << std::endl;
        exit(1);
    }

    infile.close();

    // Convert the buffer to an S-expression
    gcry_sexp_t key;
    err = gcry_sexp_new(&key, buffer.data(), buffer.size(), 1);
    if (err)
    {
        std::cerr << "Failed to create S-expression from key buffer: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    return key;
}

// Function to import both public and private keys from files
void import_keypair_from_files(
    // gcry_sexp_t& pubkey, 
gcry_sexp_t& privkey,
                            //    const std::string& pubkey_filename,
                               const std::string& privkey_filename)
{
    // pubkey = import_key_from_file(pubkey_filename);
    privkey = import_key_from_file(privkey_filename);
}

// Function to encrypt data
gcry_sexp_t rsa_encrypt(gcry_sexp_t pubkey, const std::string& plaintext)
{
    gcry_error_t err;
    gcry_mpi_t mpi_plaintext;
    gcry_sexp_t data_sexp;
    gcry_sexp_t ciphertext;

    // Convert plaintext string to MPI
    err = gcry_mpi_scan(&mpi_plaintext, GCRYMPI_FMT_USG, plaintext.data(), plaintext.size(), NULL);
    if (err)
    {
        std::cerr << "Failed to create MPI from plaintext: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    // Build data S-expression
    err = gcry_sexp_build(&data_sexp, NULL, "(data (flags raw) (value %m))", mpi_plaintext);
    gcry_mpi_release(mpi_plaintext);

    if (err)
    {
        std::cerr << "Failed to build data S-expression: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    // Encrypt the data
    err = gcry_pk_encrypt(&ciphertext, data_sexp, pubkey);
    gcry_sexp_release(data_sexp);

    if (err)
    {
        std::cerr << "Encryption failed: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    return ciphertext;
}


// Function to decrypt data
std::string rsa_decrypt(gcry_sexp_t privkey, gcry_sexp_t ciphertext, const char *events[],ofstream &file)
{
    gcry_error_t err;
    gcry_sexp_t plaintext_sexp;
    gcry_mpi_t mpi_plaintext;
    size_t plaintext_size;
    unsigned char *plaintext_buffer;
    unsigned char input_string[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.";
    size_t input_length = sizeof(input_string) - 1; // Exclude null terminator
    std::string original_input((char*)input_string, input_length);

    ctx = init_profile(0, events);
    start_profile(ctx);
    auto start = chrono::high_resolution_clock::now();

    // Decrypt the data
    err = gcry_pk_decrypt(&plaintext_sexp, ciphertext, privkey);

    auto end = chrono::high_resolution_clock::now();
    pref_result_t *res = stop_profile2(ctx);
   
    // Log the profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << res[i].name << ":" << res[i].result << "\n";
    }
    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    file << "execution_time :" << duration << "\n";
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

    // Get the size of the plaintext
    plaintext_size = (gcry_mpi_get_nbits(mpi_plaintext) + 7) / 8;
    plaintext_buffer = (unsigned char *)malloc(plaintext_size);
    if (!plaintext_buffer)
    {
        std::cerr << "Failed to allocate memory for plaintext" << std::endl;
        gcry_mpi_release(mpi_plaintext);
        exit(1);
    }

    // Convert MPI to buffer
    err = gcry_mpi_print(GCRYMPI_FMT_USG, plaintext_buffer, plaintext_size, NULL, mpi_plaintext);
    gcry_mpi_release(mpi_plaintext);

    if (err)
    {
        std::cerr << "Failed to convert MPI to plaintext: " << gcry_strerror(err) << std::endl;
        free(plaintext_buffer);
        exit(1);
    }

    // Convert plaintext buffer to string
    std::string plaintext((char *)plaintext_buffer, plaintext_size);
    free(plaintext_buffer);
    if (original_input == plaintext) {            
    } else {
            std::cout << "The decrypted plaintext does NOT match the original input string." << std::endl;
    }

    return plaintext;
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
// Function to read ciphertext from a file
gcry_sexp_t read_ciphertext_from_file(const std::string& filename)
{
    gcry_error_t err;
    std::ifstream infile(filename, std::ios::binary | std::ios::ate);
    if (!infile)
    {
        std::cerr << "Failed to open file for reading: " << filename << std::endl;
        exit(1);
    }

    // Get the size of the file
    std::streamsize size = infile.tellg();
    infile.seekg(0, std::ios::beg);

    // Read the contents into a buffer
    std::vector<char> buffer(size);
    if (!infile.read(buffer.data(), size))
    {
        std::cerr << "Failed to read ciphertext from file: " << filename << std::endl;
        exit(1);
    }

    infile.close();

    // Convert the buffer to an S-expression
    gcry_sexp_t ciphertext;
    err = gcry_sexp_new(&ciphertext, buffer.data(), buffer.size(), 1);
    if (err)
    {
        std::cerr << "Failed to create S-expression from ciphertext buffer: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    return ciphertext;
}

int main(int argc,char **argv)
{
    #if ENABLE_GEM5==1
    map_m5_mem();
    m5_work_begin_addr(0, 0); // switch cpu type
    #else 
    int ret = pfm_initialize();
    if (ret != PFM_SUCCESS) {
        cerr << "Cannot initialize library: " << pfm_strerror(ret) << endl;
        return 1;
    }
    #endif 

    if (argc < 5) {
        cerr << "Error: Arguments less than 4.\n";
        std::cerr << "Usage: ./main --public_key <public_key_path> --private_key <private_key_path> --output <output_file> --input <encrypted_file>\n"
              << "\n"
              << "Options:\n"
              << "  --public_key <public_key_path>    Path to the public key file (e.g., ./path_to_directory/public_key_1).\n"
              << "  --private_key <private_key_path>  Path to the private key file (e.g., ./path_to_directory/private_key_1).\n"
              << "  --output <output_file>            Path to the output file where results will be saved.\n"
              << "  --input <encrypted_file>          Path to the input encrypted file (e.g., ./path_to_directory/encrypted_1).\n"
              << "\n"
              << "Description:\n"
              << "  This command runs the application with specified keys and files. The public and private key files are used\n"
              << "  to decrypt or process the input encrypted file, and the result is saved in the output file.\n";

        return 1;
    }

    map<string, string> args = parseArgs(argc, argv);
    // string private_key_fname = args["private_key"]; // argv[1];
    string private_key_fname  = args["private_key"];  //argv[2];
    string public_key_fname  = args["public_key"];  //argv[2];
    string input_file_name   = args["input"];       //argv[3];
    string output_file_name  = args["output"];      //argv[4];

    // Initialize libgcrypt
    initialize_libgcrypt();

    std::ofstream file(output_file_name, ios::out | ios::trunc);
    if (!file) {
        cerr << "Error opening output file: " << output_file_name << endl;
        return 1;
    }
    // Import keys from files
    gcry_sexp_t imported_privkey;//imported_pubkey, 
    import_keypair_from_files(
        // imported_pubkey, 
        imported_privkey,
         private_key_fname
        //  , 
        //  public_key_fname
         );

    // // Encrypt the plaintext using the imported public key
    gcry_sexp_t ciphertext = read_ciphertext_from_file(input_file_name);


    /** Encryption */
    int size = 21;
    // Process groups of 3 events
    for (int i = 0; i < size - 2; i += 3) {
        #ifdef ENABLE_GEM5==1
        vector<const char*> events = {};
        #else 
        vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2],NULL};
        #endif 
        std::string decrypted_plaintext = rsa_decrypt(imported_privkey, ciphertext,events.data(), file);        
        // std::cout << "Decrypted plaintext: " << decrypted_plaintext << std::endl;        
    }

    // Handle remaining elements if not multiple of 3
    if (size % 3 != 0) {
        
        #ifdef ENABLE_GEM5==1
        vector<const char*> events={};
        #else 
        int remaining = size % 3;
        vector<const char*> events(remaining+1);

        for (int i = 0; i < remaining; ++i) {
            events[i] = gen_events__[size - remaining + i];
            cout << "event-" << i << ": " << events[i] << endl;
        }
        events[remaining]=NULL;
        #endif 
        std::string decrypted_plaintext = rsa_decrypt(imported_privkey, ciphertext,events.data(), file);
        
        // std::cout << "Decrypted plaintext: " << decrypted_plaintext << std::endl;
        
    }



    // Clean up
    // gcry_sexp_release(imported_pubkey);
    gcry_sexp_release(imported_privkey);
    gcry_sexp_release(ciphertext);
    #if ENABLE_GEM5==1
    m5_work_end_addr(0, 0);  // 4th stat dump. does not show!
    unmap_m5_mem();
    #endif 
    return 0;
}
