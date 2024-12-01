import os
import sys
import subprocess
import re 
import csv

# def split_string_and_integer(s):
#     match = re.match(r"([a-zA-Z_]+)(\d+)$", s)
#     if match:
#         string_part = match.group(1)
#         integer_part = int(match.group(2))
#         return string_part, integer_part
#     else:
#         return s, None  # Return None if no integer is found at the end

def main(app,round=0,stage=0,fast=0):

    # Define paths
    base_path = f"/home/donayam/Documents/dove_workspace/libgcrypt_exp/data/"
    os.makedirs(base_path, exist_ok=True)
    round_out = os.path.join( f"{base_dir}",f"{app}",f"round{round}")
    os.makedirs(round_out, exist_ok=True)
    
    
    print("Analysis started")

    
    
    # Stage 0: Generate input secret values
    if stage <= 0:
        subprocess.run(["python3", "helper.py", "--stage", "0", "--app", app, "--base_dir", base_path,"--round",str(round)], check=True)
        print("------------Stage zero completed.---------------")
    
    if round==0:
        return 
    # Stage 1: Run the application and collect events
    if stage <= 1:
        os.chdir(app)
        subprocess.run(["sudo","python3", "./run2.py", "--round",str(round),"--base_dir",base_path], check=True)
        print("------------Stage one completed.-----------------")
        os.chdir("..")
    
     
    # Stage 3: Run PaCMAP followed by clustering
    if stage <= 2:
        result = subprocess.run(["python3", "clustering_test.py", "--base_dir", base_dir, "--round" , str(round),"--app",app,"--fast",fast])
        if result.returncode != 0:
            print("******** Only one cluster returned. Exiting. **********")
            sys.exit(0)
        print("------------Stage three completed.---------------")
    

import argparse

if __name__ == "__main__":
   
    
    parser = argparse.ArgumentParser(description="Process some files.")
    # Add arguments
    
    parser.add_argument("--app", required=True, help="The application to process")    
    parser.add_argument("--stage", type=int, default=0, help="Analysis Stage. 0-generating input")
    parser.add_argument("--sround", default="0", help="The current round")
    parser.add_argument("--base_dir", default="data", help="The current round")
    parser.add_argument("--rounds", default="10", help="The max current rounds to run the script")
    parser.add_argument("--fast", type=int, default=0, help="disable generating pair-plots and MMD for the intial rounds(8)")
    
    args = parser.parse_args()
    
    app = args.app 
    # stage = int(args.stage)    
    base_dir = args.base_dir
    
    for i in range(int(args.sround),int(args.rounds)+1):
        round = i 
        print(f"--------round{round}----------")
        fast = args.fast 
        if round == 10:
            fast = 0
        main(app=app,round=round,fast=fast)
    