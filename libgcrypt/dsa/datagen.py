import os
import subprocess

def genDSAData(ndata=3000, out_dir="data/dsa/round1/input", key_length=3000, file_name_prefix=["private_key_"],base_dir=""):
    os.makedirs(out_dir, exist_ok=True)          
    # print("curr_dir=",os.getcwd())     
    binary_path = os.path.join(f"{base_dir}","dsa","datagen")     
    # print("binray path=",binary_path)     
    os.environ["LD_LIBRARY_PATH"] = "/home/donayam/Documents/dove_workspace/libs/libgcrypt-1.8.11/build/lib:/home/donayam/Documents/dove_workspace/libs/libpfm4/lib"
    result = subprocess.run([binary_path, "--nkeys", str(ndata), "--outd", out_dir], capture_output=False, text=True)
   