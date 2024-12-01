import os
import subprocess

def genAESData_openssl(ndata=1000, out_dir="data/aes/round1/input", key_length=32, file_name_prefix=["private_key_"],base_dir=""):
    # os.makedirs(out_dir, exist_ok=True)          
    # # print("curr_dir=",os.getcwd())     
    # binary_path = os.path.join(f"{base_dir}","rsa","datagen")     
    # # print("binray path=",binary_path)     
    # os.environ["LD_LIBRARY_PATH"] = "/home/donayam/Documents/dove_workspace/libs/libgcrypt-1.8.11/build/lib:/home/donayam/Documents/dove_workspace/libs/libpfm4/lib"
    # result = subprocess.run([binary_path, "--nkeys", str(ndata), "--outd", out_dir], capture_output=False, text=True)
    """
    Generates AES keys and saves each key in a separate file.
    
    Parameters:
    - num_keys (int): Number of keys to generate.
    - key_length (int): Length of each key in bytes (32 for AES-256).
    - prefix (str): Prefix for the output files.
    """
    prefix = file_name_prefix[0]
    for i in range(1, ndata + 1):
        key = os.urandom(key_length).hex()  # Generate a random key and convert to hex
        filename = f"{out_dir}/{prefix}{i}.txt"       # Create a unique filename for each key
        with open(filename, "w") as file:
            file.write(key)                 # Write the key to the file
        # print(f"Key {i} saved to {filename}")

   