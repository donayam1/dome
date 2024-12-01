#include <iostream>
#include <fstream>
#include <vector>
#include <iterator>
#include <openssl/rsa.h>
#include <openssl/pem.h>
#include <openssl/bn.h>
#include <openssl/err.h>

RSA* load_rsa_key(const std::string &filename) {
    // Read the key data from the file
    std::vector<unsigned char> key_data;
    {
        std::ifstream file(filename, std::ios::binary);
        if (!file) {
            std::cerr << "Error opening file: " << filename << std::endl;
            exit(1);
        }
        file.unsetf(std::ios::skipws);
        file.seekg(0, std::ios::end);
        std::streampos file_size = file.tellg();
        file.seekg(0, std::ios::beg);
        key_data.reserve(file_size);
        key_data.insert(key_data.begin(),
                        std::istream_iterator<unsigned char>(file),
                        std::istream_iterator<unsigned char>());
    }

    // Create a BIO from the key data
    BIO *bio = BIO_new_mem_buf(key_data.data(), key_data.size());
    if (!bio) {
        std::cerr << "Error creating BIO" << std::endl;
        exit(1);
    }

    // Try reading as PEM
    RSA *rsa = PEM_read_bio_RSAPrivateKey(bio, NULL, NULL, NULL);
    if (!rsa) {
        // Reset the BIO
        BIO_reset(bio);

        // Try reading as DER
        rsa = d2i_RSAPrivateKey_bio(bio, NULL);
    }

    if (!rsa) {
        std::cerr << "Error reading RSA private key from file: " << filename << std::endl;
        ERR_print_errors_fp(stderr);
        BIO_free(bio);
        exit(1);
    }

    BIO_free(bio);
    return rsa;
}

int count_high_bits(const BIGNUM *bn) {
    int high_bits_count = 0;
    int nbits = BN_num_bits(bn);
    for (int i = 0; i < nbits; ++i) {
        if (BN_is_bit_set(bn, i)) {
            high_bits_count++;
        }
    }
    return high_bits_count;
}

void write_bignum_bits_to_file(const BIGNUM *bn, const std::string &filename) {
    std::ofstream outfile(filename);
    if (!outfile) {
        std::cerr << "Error opening output file: " << filename << std::endl;
        exit(1);
    }

    int nbits = BN_num_bits(bn);
    for (int i = nbits - 1; i >= 0; --i) {
        int bit = BN_is_bit_set(bn, i);
        outfile << bit;
        if ((i + 1) % 5 == 0) {
            outfile << "\n";
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

    // Load the RSA key
    RSA *rsa = load_rsa_key(argv[1]);

    // Get the private exponent d
    const BIGNUM *d = RSA_get0_d(rsa);
    if (!d) {
        std::cerr << "Failed to get private exponent (d)" << std::endl;
        RSA_free(rsa);
        return 1;
    }

    // Count the high bits in the private exponent (d)
    int high_bits_count = count_high_bits(d);
    int total_bits = BN_num_bits(d);

    // Output the result
    std::cout << "Total bits in private exponent (d): " << total_bits << std::endl;
    std::cout << "Number of high bits in private exponent (d): " << high_bits_count << std::endl;

    const std::string output_filename = "keybits.txt";
    write_bignum_bits_to_file(d, output_filename);
    std::cout << "Key bits have been written to: " << output_filename << std::endl;

    // Clean up
    RSA_free(rsa);

    return 0;
}
