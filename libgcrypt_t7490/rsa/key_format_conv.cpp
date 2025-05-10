#include <gcrypt.h>
#include <gpg-error.h>
#include <iostream>
#include <vector>
#include <fstream>
#include <stdexcept>
#include <cstdlib>

// Ensure that libgcrypt is initialized
void initialize_libgcrypt()
{
    if (!gcry_check_version(GCRYPT_VERSION))
    {
        std::cerr << "Failed to initialize libgcrypt" << std::endl;
        exit(1);
    }

    gcry_control(GCRYCTL_INITIALIZATION_FINISHED, 0);
}

// Function to generate RSA key pair
gcry_sexp_t generate_rsa_keypair(unsigned int nbits)
{
    gcry_error_t err;
    gcry_sexp_t params;
    gcry_sexp_t keypair;

    // Build S-expression for key generation parameters
    err = gcry_sexp_build(&params, NULL, "(genkey (rsa (nbits %u)))", nbits);
    if (err)
    {
        std::cerr << "Failed to build S-expression: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    // Generate the key pair
    err = gcry_pk_genkey(&keypair, params);
    gcry_sexp_release(params);

    if (err)
    {
        std::cerr << "Failed to generate RSA key pair: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    return keypair;
}

// Function to convert MPI to byte array
std::vector<uint8_t> mpi_to_byte_array(gcry_mpi_t mpi)
{
    size_t mpi_len = (gcry_mpi_get_nbits(mpi) + 7) / 8;
    std::vector<uint8_t> buffer(mpi_len + 1); // Add one extra byte in case

    size_t nbytes;
    gcry_error_t err = gcry_mpi_print(GCRYMPI_FMT_STD, buffer.data(), buffer.size(), &nbytes, mpi);
    if (err)
    {
        throw std::runtime_error("Failed to print MPI");
    }
    buffer.resize(nbytes);
    return buffer;
}

// Function to encode INTEGER in DER format
std::vector<uint8_t> encode_integer(const uint8_t *data, size_t len)
{
    std::vector<uint8_t> encoded;
    encoded.push_back(0x02); // INTEGER tag

    // Check if we need to prepend zero byte
    bool prepend_zero = (data[0] & 0x80) != 0;

    size_t content_len = len + (prepend_zero ? 1 : 0);

    // Encode length
    if (content_len < 128)
    {
        encoded.push_back(static_cast<uint8_t>(content_len));
    }
    else
    {
        // Long form length encoding
        size_t len_len = 0;
        size_t tmp_len = content_len;
        while (tmp_len > 0)
        {
            len_len++;
            tmp_len >>= 8;
        }
        encoded.push_back(static_cast<uint8_t>(0x80 | len_len));
        for (int i = len_len - 1; i >= 0; i--)
        {
            encoded.push_back(static_cast<uint8_t>((content_len >> (8 * i)) & 0xFF));
        }
    }

    // Write the content
    if (prepend_zero)
    {
        encoded.push_back(0x00);
    }
    encoded.insert(encoded.end(), data, data + len);

    return encoded;
}

// Function to encode SEQUENCE in DER format
std::vector<uint8_t> encode_sequence(const std::vector<uint8_t> &content)
{
    std::vector<uint8_t> encoded;
    encoded.push_back(0x30); // SEQUENCE tag

    size_t content_len = content.size();

    // Encode length
    if (content_len < 128)
    {
        encoded.push_back(static_cast<uint8_t>(content_len));
    }
    else
    {
        // Long form length encoding
        size_t len_len = 0;
        size_t tmp_len = content_len;
        while (tmp_len > 0)
        {
            len_len++;
            tmp_len >>= 8;
        }
        encoded.push_back(static_cast<uint8_t>(0x80 | len_len));
        for (int i = len_len - 1; i >= 0; i--)
        {
            encoded.push_back(static_cast<uint8_t>((content_len >> (8 * i)) & 0xFF));
        }
    }

    // Append content
    encoded.insert(encoded.end(), content.begin(), content.end());

    return encoded;
}

// Base64 encoding function
std::string base64_encode(const uint8_t *data, size_t len)
{
    static const char base64_chars[] =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    std::string result;
    size_t i = 0;
    uint32_t octet_a, octet_b, octet_c, triple;

    while (i < len)
    {
        octet_a = i < len ? data[i++] : 0;
        octet_b = i < len ? data[i++] : 0;
        octet_c = i < len ? data[i++] : 0;

        triple = (octet_a << 16) + (octet_b << 8) + octet_c;

        result += base64_chars[(triple >> 18) & 0x3F];
        result += base64_chars[(triple >> 12) & 0x3F];
        result += (i - 2) < len ? base64_chars[(triple >> 6) & 0x3F] : '=';
        result += (i - 1) < len ? base64_chars[triple & 0x3F] : '=';
    }

    // Add padding if necessary
    while (result.size() % 4 != 0)
    {
        result += '=';
    }

    return result;
}

// Function to save private key in PEM format
void save_private_key_pem(const std::vector<uint8_t> &der_data, const std::string &filename)
{
    std::string pem;
    pem += "-----BEGIN RSA PRIVATE KEY-----\n";

    std::string b64 = base64_encode(der_data.data(), der_data.size());
    for (size_t i = 0; i < b64.size(); i += 64)
    {
        pem += b64.substr(i, 64) + "\n";
    }

    pem += "-----END RSA PRIVATE KEY-----\n";

    std::ofstream ofs(filename);
    if (!ofs)
    {
        throw std::runtime_error("Failed to open file for writing");
    }
    ofs << pem;
    ofs.close();
}
// Function to print MPI values
void print_mpi(const char* name, gcry_mpi_t mpi)
{
    size_t nbytes;
    gcry_error_t err = gcry_mpi_print(GCRYMPI_FMT_HEX, NULL, 0, &nbytes, mpi);
    if (err && gcry_err_code(err) != GPG_ERR_TOO_SHORT)
    {
        std::cerr << "Failed to get size for MPI " << name << ": " << gcry_strerror(err) << std::endl;
        return;
    }

    std::vector<char> buffer(nbytes + 1); // +1 for null terminator
    err = gcry_mpi_print(GCRYMPI_FMT_HEX, reinterpret_cast<unsigned char*>(buffer.data()), buffer.size(), &nbytes, mpi);
    if (err)
    {
        std::cerr << "Failed to print MPI " << name << ": " << gcry_strerror(err) << std::endl;
    }
    else
    {
        buffer[nbytes] = '\0'; // Null-terminate the string
        std::cout << name << " = 0x" << buffer.data() << std::endl;
    }
}
// Function to count the number of bits set to 1 in the high half of 'd'
int count_high_bits_in_private_exponent(gcry_mpi_t d)
{
    // Step 1: Get the total number of bits in 'd'
    unsigned int total_bits = gcry_mpi_get_nbits(d);

    // Step 2: Calculate the number of bits in the high half
    unsigned int high_half_bits = (total_bits + 1) / 2; // Handle odd number of bits

    // Shift 'd' right by the number of bits in the low half
    gcry_mpi_t high_half = gcry_mpi_new(0);
    gcry_mpi_rshift(high_half, d, total_bits - high_half_bits);

    // Step 3: Count the number of bits set to 1 in 'high_half'
    int num_high_bits_set = 0;

    // Convert 'high_half' to an array of bytes
    size_t buf_len = (high_half_bits + 7) / 8;
    std::vector<uint8_t> buffer(buf_len);
    size_t nbytes;

    gcry_error_t err = gcry_mpi_print(GCRYMPI_FMT_USG, buffer.data(), buffer.size(), &nbytes, high_half);
    if (err)
    {
        std::cerr << "Failed to print high half of 'd': " << gcry_strerror(err) << std::endl;
        gcry_mpi_release(high_half);
        return -1; // Indicate error
    }

    // Count the number of bits set to 1 in the buffer
    for (size_t i = 0; i < nbytes; i++)
    {
        uint8_t byte = buffer[i];
        // Use __builtin_popcount if available, or count bits manually
        num_high_bits_set += __builtin_popcount(byte);
    }

    // Clean up
    gcry_mpi_release(high_half);

    return num_high_bits_set;
}
void compute_and_print_mpi_stats(const char* name, gcry_mpi_t mpi)
{
    // Get the total number of bits in the MPI
    unsigned int total_bits = gcry_mpi_get_nbits(mpi);

    // Convert the MPI to a byte array
    size_t mpi_len = (total_bits + 7) / 8; // Total bytes needed
    std::vector<uint8_t> buffer(mpi_len);
    size_t nbytes;

    gcry_error_t err = gcry_mpi_print(GCRYMPI_FMT_USG, buffer.data(), buffer.size(), &nbytes, mpi);
    if (err)
    {
        std::cerr << "Failed to print MPI " << name << ": " << gcry_strerror(err) << std::endl;
        return;
    }

    // Count the number of bits set to 1
    int num_bits_set = 0;
    for (size_t i = 0; i < nbytes; i++)
    {
        uint8_t byte = buffer[i];
        // Use __builtin_popcount if available, or define a custom function
        num_bits_set += __builtin_popcount(byte);
    }

    // Print the results
    std::cout << name << ":" << std::endl;
    std::cout << "  Total bits:       " << total_bits << std::endl;
    std::cout << "  Bits set to 1:    " << num_bits_set << std::endl;
    std::cout << std::endl;
}
int count_bits_in_byte(uint8_t byte)
{
    int count = 0;
    while (byte)
    {
        count += byte & 1;
        byte >>= 1;
    }
    return count;
}

int main()
{
    initialize_libgcrypt();

    // Generate RSA key pair
    gcry_sexp_t keypair = generate_rsa_keypair(2048);

    // Extract private key parameters
    gcry_mpi_t n = NULL, e = NULL, d = NULL, p = NULL, q = NULL, u = NULL;

    // Find the 'private-key' S-expression
    gcry_sexp_t privkey = gcry_sexp_find_token(keypair, "private-key", 0);
    if (!privkey)
    {
        std::cerr << "Failed to find 'private-key' in keypair" << std::endl;
        exit(1);
    }

    // Find the 'rsa' S-expression inside 'private-key'
    gcry_sexp_t rsa_key = gcry_sexp_find_token(privkey, "rsa", 0);
    if (!rsa_key)
    {
        std::cerr << "Failed to find 'rsa' in private-key" << std::endl;
        exit(1);
    }

    // Extract parameters from 'rsa_key'
    gcry_error_t err = gcry_sexp_extract_param(rsa_key, NULL, "n e d p q u", &n, &e, &d, &p, &q, &u, NULL);
    if (err)
    {
        std::cerr << "Failed to extract key parameters: " << gcry_strerror(err) << std::endl;
        exit(1);
    }

    // Null checks for extracted parameters
    if (!n || !e || !d || !p || !q || !u)
    {
        std::cerr << "One or more key parameters are NULL after extraction." << std::endl;
        exit(1);
    }

     // Print the extracted parameters
    print_mpi("n", n);
    print_mpi("e", e);
    print_mpi("d", d);
    print_mpi("p", p);
    print_mpi("q", q);
    print_mpi("u", u);

    // Count the number of high bits in the private exponent 'd'
    int num_high_bits_set = count_high_bits_in_private_exponent(d);
    if (num_high_bits_set >= 0)
    {
        std::cout << "Number of bits set to 1 in the high half of the private exponent 'd': "
                  << num_high_bits_set << std::endl;
    }
    else
    {
        std::cerr << "Failed to count high bits in the private exponent 'd'." << std::endl;
    }

    // Compute and print statistics for each key parameter
    compute_and_print_mpi_stats("n", n);
    compute_and_print_mpi_stats("e", e);
    compute_and_print_mpi_stats("d", d);
    compute_and_print_mpi_stats("p", p);
    compute_and_print_mpi_stats("q", q);
    compute_and_print_mpi_stats("u", u);

    // // // If you have exp1, exp2, coeff computed, you can include them as well
    // // compute_and_print_mpi_stats("exp1 (d mod p-1)", exp1);
    // // compute_and_print_mpi_stats("exp2 (d mod q-1)", exp2);
    // // compute_and_print_mpi_stats("coeff (q^-1 mod p)", coeff);

    // // Compute exponent1, exponent2
    // gcry_mpi_t exp1 = gcry_mpi_new(0);
    // gcry_mpi_t exp2 = gcry_mpi_new(0);

    // gcry_mpi_t p_minus1 = gcry_mpi_new(0);
    // gcry_mpi_sub_ui(p_minus1, p, 1);
    // gcry_mpi_mod(exp1, d, p_minus1);

    // gcry_mpi_t q_minus1 = gcry_mpi_new(0);
    // gcry_mpi_sub_ui(q_minus1, q, 1);
    // gcry_mpi_mod(exp2, d, q_minus1);

    // // Compute coefficient (coeff = q^{-1} mod p)
    // gcry_mpi_t coeff = gcry_mpi_new(0);

    // // Compute coeff = q^{-1} mod p
    // err = gcry_mpi_invm(coeff, q, p);
    // if (err)
    // {
    //     // If inversion fails, try computing coeff = p^{-1} mod q
    //     err = gcry_mpi_invm(coeff, p, q);
    //     if (err)
    //     {
    //         std::cerr << "Failed to compute coefficient: " << gcry_strerror(err) << std::endl;
    //         exit(1);
    //     }

    //     // Swap p and q
    //     gcry_mpi_t temp = p;
    //     p = q;
    //     q = temp;

    //     // Swap exp1 and exp2
    //     temp = exp1;
    //     exp1 = exp2;
    //     exp2 = temp;
    // }

    // // Encode the key components
    // uint8_t version_bytes[1] = {0x00};
    // std::vector<uint8_t> version_encoded = encode_integer(version_bytes, 1);

    // std::vector<uint8_t> n_bytes = mpi_to_byte_array(n);
    // std::vector<uint8_t> e_bytes = mpi_to_byte_array(e);
    // std::vector<uint8_t> d_bytes = mpi_to_byte_array(d);
    // std::vector<uint8_t> p_bytes = mpi_to_byte_array(p);
    // std::vector<uint8_t> q_bytes = mpi_to_byte_array(q);
    // std::vector<uint8_t> exp1_bytes = mpi_to_byte_array(exp1);
    // std::vector<uint8_t> exp2_bytes = mpi_to_byte_array(exp2);
    // std::vector<uint8_t> coeff_bytes = mpi_to_byte_array(coeff);

    // std::vector<uint8_t> n_encoded = encode_integer(n_bytes.data(), n_bytes.size());
    // std::vector<uint8_t> e_encoded = encode_integer(e_bytes.data(), e_bytes.size());
    // std::vector<uint8_t> d_encoded = encode_integer(d_bytes.data(), d_bytes.size());
    // std::vector<uint8_t> p_encoded = encode_integer(p_bytes.data(), p_bytes.size());
    // std::vector<uint8_t> q_encoded = encode_integer(q_bytes.data(), q_bytes.size());
    // std::vector<uint8_t> exp1_encoded = encode_integer(exp1_bytes.data(), exp1_bytes.size());
    // std::vector<uint8_t> exp2_encoded = encode_integer(exp2_bytes.data(), exp2_bytes.size());
    // std::vector<uint8_t> coeff_encoded = encode_integer(coeff_bytes.data(), coeff_bytes.size());

    // // Assemble the private key DER encoding
    // std::vector<uint8_t> sequence_content;
    // sequence_content.insert(sequence_content.end(), version_encoded.begin(), version_encoded.end());
    // sequence_content.insert(sequence_content.end(), n_encoded.begin(), n_encoded.end());
    // sequence_content.insert(sequence_content.end(), e_encoded.begin(), e_encoded.end());
    // sequence_content.insert(sequence_content.end(), d_encoded.begin(), d_encoded.end());
    // sequence_content.insert(sequence_content.end(), p_encoded.begin(), p_encoded.end());
    // sequence_content.insert(sequence_content.end(), q_encoded.begin(), q_encoded.end());
    // sequence_content.insert(sequence_content.end(), exp1_encoded.begin(), exp1_encoded.end());
    // sequence_content.insert(sequence_content.end(), exp2_encoded.begin(), exp2_encoded.end());
    // sequence_content.insert(sequence_content.end(), coeff_encoded.begin(), coeff_encoded.end());

    // std::vector<uint8_t> private_key_der = encode_sequence(sequence_content);

    // // Save private key in PEM format
    // save_private_key_pem(private_key_der, "private_key.pem");

    // Clean up
    gcry_mpi_release(n);
    gcry_mpi_release(e);
    gcry_mpi_release(d);
    gcry_mpi_release(p);
    gcry_mpi_release(q);
    gcry_mpi_release(u);
    // gcry_mpi_release(exp1);
    // gcry_mpi_release(exp2);
    // gcry_mpi_release(coeff);
    // gcry_mpi_release(p_minus1);
    // gcry_mpi_release(q_minus1);
    gcry_sexp_release(keypair);
    gcry_sexp_release(privkey);
    gcry_sexp_release(rsa_key);

    return 0;
}
