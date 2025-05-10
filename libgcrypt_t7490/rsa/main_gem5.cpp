#include <iostream>
#include <fstream>
#include <filesystem>
#include <vector>
#include <string>
#include <sstream>
#include <map>
#include <gcrypt.h>


#if ENABLE_GEM5==1
#pragma message("Compiling with gem5 instructions")
#include <gem5/m5ops.h>
#include "m5_mmap.h"
#endif 

namespace fs = std::filesystem;
using namespace std;

#if ENABLE_GEM5==1
void set_file_id(const std::string& file_id) {
    // setenv("GEM5_FILE_ID", file_id.c_str(), 1); // Set the environment variable
    // Write file_id to a host-accessible file
    // m5_writefile(file_id.c_str(), file_id.size(), "/workdir/gem5_file_id.txt");    
    const char* filename = "/workdir/gem5_file_id.txt";

    // Truncate the file by writing zero bytes at offset zero
    m5_write_file(nullptr, 0, 0, filename);

    const char* data = file_id.c_str();
    uint64_t len = file_id.size();
    uint64_t offset = 0;  // Start writing from the beginning of the file

    // Write the new file_id to the host file
    m5_write_file((void*)data, len, offset, filename);

}
#endif 

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
    std::cout<<"Decrypt called\n";
    #if ENABLE_GEM5==1    
    m5_reset_stats(0,0);   
    #endif 
    // Decrypt the data
    err = gcry_pk_decrypt(&plaintext_sexp, ciphertext, privkey);
    
    #if ENABLE_GEM5==1
    m5_exit(0);          	        
    #endif  
    std::cout<<"Decrypt finished\n";   
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


// Helper function to set environment variable for GEM5 log files
void set_gem5_log_file(const std::string& log_file_name) {
    #if ENABLE_GEM5 == 1
    setenv("GEM5_LOG_FILE", log_file_name.c_str(), 1); // Set GEM5_LOG_FILE environment variable
    #endif
}

void run_experiment(int round, const std::string& base_dir) {
    std::string input_csv = base_dir + "/rsa/round" + std::to_string(round) + "/input.csv";
    std::string output_dir = base_dir + "/rsa/round" + std::to_string(round) + "/output";
    std::string input_dir = base_dir + "/rsa/input";

    // Ensure output directory exists
    if (!fs::exists(output_dir)) {
        fs::create_directories(output_dir);
        std::cout << "Output directory created: " << output_dir << std::endl;
    }

    // Open the CSV file
    std::ifstream csv_file(input_csv);
    if (!csv_file.is_open()) {
        std::cerr << "Error: CSV file '" << input_csv << "' not found." << std::endl;
        return;
    }
    std::cout<<"Opened csv file"<<endl;

    // Read the header row
    std::string header_line;
    if (!std::getline(csv_file, header_line)) {
        std::cerr << "Error: CSV file is empty or malformed." << std::endl;
        return;
    }
    std::cout<<"Csv file has header"<<endl;
    // Parse the header to find the "filename" column index
    std::istringstream header_stream(header_line);
    std::string column;
    std::vector<std::string> headers;
    size_t filename_column = std::string::npos;
    size_t index = 0;

    while (std::getline(header_stream, column, ',')) {
        headers.push_back(column);
        std::cout<<"Found column name->"<<column<<endl;
        if (column == "filename") {
            filename_column = index;
        }
        index++;
    }

    if (filename_column == std::string::npos) {
        std::cerr << "Error: 'filename' column not found in CSV." << std::endl;
        return;
    }
    std::cout<<"File name  column name found"<<endl;
    // Process each row in the CSV file
    std::string line;
    while (std::getline(csv_file, line)) {
        std::istringstream line_stream(line);
        std::string cell;
        std::vector<std::string> row;
        while (std::getline(line_stream, cell, ',')) {
            row.push_back(cell);
        }

        // Ensure the row has enough columns
        if (row.size() <= filename_column) {
            std::cerr << "Skipping malformed row: " << line << std::endl;
            continue;
        }

        // Get the filename value
        std::string filename = row[filename_column];

        // Process the filename as before
        std::string fid = filename.substr(filename.find_last_of('_') + 1, filename.find_last_of('.') - filename.find_last_of('_') - 1);
        std::string fenc_name = filename.substr(0, filename.find_first_of('_'));
        std::string private_key = input_dir + "/private_key_" + fid + ".pem";
        std::string public_key = input_dir + "/public_key_" + fid + ".pem";
        std::string encrypted_file = input_dir + "/" + fenc_name + "_" + fid + ".bin";

        std::string output_file = output_dir + "/encrypted_" + fid + ".output";
        std::cout <<"Processing file -> "<<fid<<"\n";
        if (fs::exists(public_key) && fs::exists(encrypted_file)) {
            // Initialize libgcrypt
            initialize_libgcrypt();

            // Import keys
            gcry_sexp_t imported_privkey;
            import_keypair_from_files(imported_privkey, private_key);

            // Read ciphertext
            gcry_sexp_t ciphertext = read_ciphertext_from_file(encrypted_file);

            // Open output file
            std::ofstream file(output_file, std::ios::out | std::ios::trunc);
            if (!file) {
                std::cerr << "Error opening output file: " << output_file << std::endl;
                continue;
            }
            file <<fid<<"\n";
            // Set GEM5 log file for this input
            // std::string gem5_log_file = "gem5_log_" + fid + ".txt";
            // set_gem5_log_file(gem5_log_file);
            
            #if ENABLE_GEM5==1    
            set_file_id(fid);
            #endif 
            // Decrypt and process
          
            std::vector<const char*> events = {nullptr, nullptr, nullptr}; // GEM5 requires NULL for events    
            std::string decrypted_plaintext = rsa_decrypt(imported_privkey, ciphertext, events.data(), file);

            // Clean up
            gcry_sexp_release(imported_privkey);
            gcry_sexp_release(ciphertext);
        } else {
            std::cerr << "Skipping: Missing file(s) - " << public_key << " or " << encrypted_file << std::endl;
        }
    }

    csv_file.close();
    std::cout << "Finished running experiment" << std::endl;
}

int main(int argc, char** argv) {
    #if ENABLE_GEM5 == 1
    map_m5_mem();
    m5_work_begin_addr(0, 0); // Initialize GEM5 logging   
    #endif

    if (argc < 3) {
        std::cerr << "Usage: ./main <round> <base_dir>" << std::endl;
        return 1;
    }

    int round = std::stoi(argv[1]);
    std::string base_dir = argv[2];

    run_experiment(round, base_dir);

    #if ENABLE_GEM5 == 1
    m5_work_end_addr(0, 0); // Finalize GEM5 logging
    unmap_m5_mem();
    #endif

    return 0;
}
