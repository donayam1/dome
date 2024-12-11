
import random 
import numpy as np 
import os 


def genIsDistinctDo(ndata=1000, out_dir="data/aes/round1/input", key_length=3000, file_name_prefix=["private_key_"],base_dir=""):
    os.makedirs(out_dir, exist_ok=True)
    size = key_length
    n_half = ndata // 2
    prefix = file_name_prefix[0]
    for x in range(ndata):
        filename = f"{out_dir}/{prefix}{x}.txt"
        if x > 450 and x < 550:
            continue
        # Generate a random permutation using NumPy
        rand = np.random.permutation(size)

        if x >= n_half:
            # Calculate 'dup' without exceeding 'size'
            dup = min((x - n_half + 1) * 3, size)
            # Set the last 'dup' elements to rand[0] to introduce duplicates
            rand[-dup:] = rand[0]

        # Save the array to file efficiently
        np.savetxt(filename, rand, fmt="%7d") 
       