#include <iostream>
#include <fstream>
#include <gcrypt.h>
#include <vector>

void initialize_gcrypt() {
    if (!gcry_check_version(GCRYPT_VERSION)) {
        std::cerr << "libgcrypt version mismatch" << std::endl;
        exit(1);
    }

    gcry_error_t err = gcry_control(GCRYCTL_DISABLE_SECMEM, 0);
    if (err) {
        std::cerr << "Failed to disable secure memory" << std::endl;
        exit(1);
    }

    gcry_control(GCRYCTL_INITIALIZATION_FINISHED, 0);
}

gcry_sexp_t load_rsa_key(const std::string &filename) {
    // Read the key data from the file
    std::ifstream file(filename, std::ios::binary);
    if (!file) {
        std::cerr << "Error opening file: " << filename << std::endl;
        exit(1);
    }

    std::string key_data((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());

    // Load the key as an S-expression
    gcry_sexp_t rsa_key;
    gcry_error_t err = gcry_sexp_new(&rsa_key, key_data.data(), key_data.size(), 1);
    if (err) {
        std::cerr << "Error parsing RSA key: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    return rsa_key;
}

int count_high_bits(const gcry_mpi_t &mpi) {
    int high_bits_count = 0;
    unsigned int nbits = gcry_mpi_get_nbits(mpi);
    for (unsigned int i = 0; i < nbits; ++i) {
        if (gcry_mpi_test_bit(mpi, i)) {
            high_bits_count++;
        }
    }
    return high_bits_count;
}

// New function to write the key bits to a text file in ASCII format
void write_mpi_bits_to_file(const gcry_mpi_t &mpi, const std::string &filename) {
    std::ofstream outfile(filename);
    if (!outfile) {
        std::cerr << "Error opening output file: " << filename << std::endl;
        exit(1);
    }

    unsigned int nbits = gcry_mpi_get_nbits(mpi);
    for (unsigned int i = nbits; i > 0; --i) {
        int bit = gcry_mpi_test_bit(mpi, i - 1);
        outfile << bit;
        if (i%5==0){
            outfile<<"\n";
        }
    }

    outfile << std::endl;
    outfile.close();
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " <RSA key file>" << std::endl;
        return 1;
    }

    initialize_gcrypt();

    // Load the RSA key
    gcry_sexp_t rsa_key = load_rsa_key(argv[1]);

    // Extract the private exponent (d) from the S-expression
    gcry_mpi_t d_mpi;
    gcry_error_t err = gcry_sexp_extract_param(rsa_key, NULL, "d", &d_mpi, NULL);
    if (err) {
        std::cerr << "Failed to extract private exponent (d): " << gcry_strerror(err) << std::endl;
        gcry_sexp_release(rsa_key);
        return 1;
    }

    // Count the high bits in the private exponent (d)
    int high_bits_count = count_high_bits(d_mpi);
    unsigned int total_bits = gcry_mpi_get_nbits(d_mpi);

    // Output the result
    std::cout << "Total bits in private exponent (d): " << total_bits << std::endl;
    std::cout << "Number of high bits in private exponent (d): " << high_bits_count << std::endl;

    const std::string output_filename = "keybits.txt";
    write_mpi_bits_to_file(d_mpi, output_filename);
    std::cout << "Key bits have been written to: " << output_filename << std::endl;


    // Clean up
    gcry_mpi_release(d_mpi);
    gcry_sexp_release(rsa_key);
    return 0;
}
