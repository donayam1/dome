#!/bin/bash

# Set the library path
export LD_LIBRARY_PATH=/home/donayam/Documents/openssl_exp/libpfm4/lib


# done 
round=$1
input_dir="../data/aes/$round/input/"
output_dir="../data/aes/$round/output/"
mkdir -p "$output_dir" && echo "Output directory created: $output_dir"

# Loop over all files in the input directory
for private_fn in "$input_dir"*.txt; do
    # Extract the base filename
    bn="$(basename "$private_fn")"

    # Extract the last integer before the file extension
    I=$(echo "$bn" | awk -F'[_ .]' '{print $(NF-1)}')
    C=$(echo "$bn" | awk -F'[_ .]' '{print $(NF-2)}')

    # Define the output filename using the extracted integer
    outfn="${output_dir}enc_${C}_${I}.txt"

    # echo "Processing: $private_fn"
    # echo "Output file: $outfn"

    # Run the command with the specified arguments
    ./main --private_key "$private_fn"  --output "$outfn" --input "../data/aes/$round/input.txt"
done
echo "Finished running experiment"