from cryptography.hazmat.primitives import serialization,hashes
from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives.asymmetric import padding

import re
import os
import csv
import pandas as pd
import shutil
import numpy as np 
import subprocess
import sys 
import argparse
from collections import defaultdict

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from select_inputs import process_farthest_points_iterative
from vipbench.distinctness.datagen import genIsDistinct
from vipbench.distinctness_do.datagen import genIsDistinctDo
from libgcrypt.rsa.datagen import genRSAData 
from libgcrypt_t7490.rsa.datagen import genRSADataT
from libgcrypt.aes.datagen import genAESData
from libgcrypt.ecdsa.datagen import genECDSAData
from libgcrypt.dsa.datagen import genDSAData
from libgcrypt.elgamal.datagen import genElgamalData

from openssl.rsa.datagen import genRSAData_openssl  
from openssl.aes.datagen import genAESData_openssl  
from openssl.ecdsa.datagen import genECDSAData_openssl  


from openssl_1_0_2k.rsa.datagen import genRSAData_openssl_1_0_2k

from libsodium.ecc.datagen import genECCData 
from libsodium.dsa.datagen import genDSAData_libsodium


data_gen = {
    "vipbench":{"distinctness": genIsDistinct,"distinctness_do":genIsDistinctDo},
    "libgcrypt":{"rsa":genRSAData,"aes":genAESData,"ecdsa":genECDSAData,"dsa":genDSAData,"elgamel":genElgamalData},
    "libgcrypt_t7490":{"rsa":genRSADataT},
    "openssl":{"rsa":genRSAData_openssl,"aes":genAESData_openssl,"ecdsa":genECDSAData_openssl},
    "libsodium":{"ecc":genECCData,"dsa":genDSAData_libsodium},
    "openssl_1_0_2k":{"rsa":genRSAData_openssl_1_0_2k},
}


def create_key_file_csv(directory, output_csv="keys_and_encrypted_files.csv"):
    # Initialize a dictionary to store grouped files by the identifying number
    grouped_files = defaultdict(lambda: {"public_key": None, "private_key": None, "encrypted": None})
    
    # List all files in the given directory
    try:
        file_list = os.listdir(directory)
    except FileNotFoundError:
        print(f"Error: Directory '{directory}' not found.")
        return
    
    # Process each file in the directory
    for file_name in file_list:
        # Determine if the file is a public key, private key, or encrypted file
        if "public_key" in file_name:
            prefix = "public_key"
        elif "private_key" in file_name:
            prefix = "private_key"
        elif "encrypted" in file_name:
            prefix = "encrypted"
        else:
            continue  # Skip files that don't match any of the expected types

        # Extract the number before the file extension
        parts = file_name.rsplit("_", 1)
        if len(parts) < 2:
            continue  # Skip files that don't fit the pattern
        number_part = parts[1].split(".")[0]
        # print(parts)
        # print(number_part)
        # Group files by the extracted number
        grouped_files[number_part][prefix] = os.path.splitext(file_name)[0]
    
    # Prepare data for the DataFrame
    data = []
    for group_number, files_dict in grouped_files.items():
        row = {
            # "public_key": files_dict["public_key"],
            # "private_key": files_dict["private_key"],
            # "filename": files_dict["private_key"],
            "filename": files_dict["encrypted"] if files_dict["encrypted"] != None else files_dict["private_key"], #TODO This was on for RSA case 
            "round0_label": 1
        }
        data.append(row)
    
    # Create DataFrame and save to CSV
    df = pd.DataFrame(data, columns=["filename", "round0_label"]) #"public_key", "private_key", 
    df.to_csv(output_csv, index=False)
    print(f"CSV file '{output_csv}' created successfully.")


def get_data(lib,app,round, base_dir="data", file_name_prefix=["private_key_"], ndata=10000):
    # app ="aes"
    app_data_dir  = os.path.join(f"{base_dir}","data",f"{app}")
    if round == 0:
        # Define the binary path and arguments
        #./datagen --nkeys 10 --outd ../data/rsa/round1/input 
  
        # binary_path = "./aes/datagen"            
        # Run the binary with arguments
        print(f"Generating {app} key to {base_dir},app={app}")
        out_dir = os.path.join(f"{app_data_dir}","input")         
        os.makedirs(out_dir, exist_ok=True)    
        # print("type is ",type(data_gen[lib][app]))
        data_gen[lib][app](ndata=ndata,out_dir=out_dir,base_dir=base_dir)        
        # generate_and_save_aes_keys(ndata=ndata,out_dir=out_dir)
        
        # result = subprocess.run([binary_path, "--nkeys", str(ndata), "--outd", out_dir], capture_output=False, text=True)
        csv_path = os.path.join(f"{app_data_dir}",f"round{round}","output.csv")
        create_key_file_csv(out_dir,output_csv=csv_path)
    else:
        prv_round = round-1 
        prv_round_out = os.path.join(f"{app_data_dir}",f"round{prv_round}","output.csv")
        out_csv = os.path.join(f"{app_data_dir}",f"round{round}","input.csv")
        if round > 1:
            pacmap_file = os.path.join(f"{app_data_dir}",f"round{prv_round}","output_pacmap.csv")
            output_csv = os.path.join(f"{app_data_dir}",f"round{round}","farthest_points.csv")
            selection_plot = os.path.join(f"{app_data_dir}",f"round{round}","farthest_points_scatter.png")
            
            xn = 3000 *pow(0.481,round)
            topn = int(xn//2)  
            if topn < 1:
                topn = 1 
            print("topn=",topn)
            process_farthest_points_iterative(
                csv_file=pacmap_file,
                label_column=f"round{prv_round}_label",
                x_column="0",
                y_column="1",
                ignore_columns=[],
                top_n=topn,
                output_csv=output_csv,
                scatter_plot_file=selection_plot
            )
            sample_from_csv(output_csv,out_csv,round,total_samples=ndata)
        else: 
            sample_from_csv0(prv_round_out,out_csv,round,sample_size=ndata//2)

        
    print(f"Generated key pairs")        

def split_string_and_integer(s):
    match = re.match(r"([a-zA-Z_]+)(\d+)$", s)
    if match:
        string_part = match.group(1)
        integer_part = int(match.group(2))
        return string_part, integer_part
    else:
        return s, None  # Return None if no integer is found at the end
    
def read_to_csv(input_dir="data/rsa/round1/output", output_full_path="data/rsa/round1/output.csv",round="round0"):
    # Set the directory containing the text files
    directory = input_dir
    output_csv = output_full_path

    # Initialize a list to store all the data for CSV
    all_data = []
    string_part, integer_part = split_string_and_integer(round)
    integer_part = int(integer_part)
    # Process each file in the directory
    for filename in os.listdir(directory):
        if filename.endswith(".txt"):
            # Extract prev_label from the filename
            base_name = os.path.splitext(filename)[0]  # Remove any extension
            prev_label = base_name.split("_")[-1]  # Take the last part after splitting by '_'

            with open(os.path.join(directory, filename), 'r') as file:
                lines = file.readlines()

                # Remove the first 4 lines
                lines = lines[4:]

                # Parse the lines and collect data
                metrics = {f"round{integer_part-1}_label": prev_label}  # Start metrics with prev_label
                total_execution_time = 0
                execution_time_count = 0

                for line in lines:
                    line = line.strip()
                    if line.startswith("execution_time"):
                        # Extract the execution_time value
                        execution_time_value = int(line.split(":")[1].strip())
                        total_execution_time += execution_time_value
                        execution_time_count += 1
                    else:
                        # Split each line by the last ':' to handle cases with multiple ':'
                        key, value = line.rsplit(":", 1)
                        metrics[key.strip()] = int(value.strip())

                # Compute the average execution time for this file
                average_execution_time = total_execution_time / execution_time_count if execution_time_count > 0 else 0
                metrics["average_execution_time"] = average_execution_time

                # Add filename and metrics data to all_data
                metrics["filename"] = filename  # Add the filename for reference
                all_data.append(metrics)

    # Get all unique keys (metric names) across all files, including 'prev_label' and 'filename'
    all_keys = set(key for metrics in all_data for key in metrics)
    all_keys = sorted(all_keys)  # Sort keys to ensure consistent column order

    # Write data to the CSV file
    with open(output_csv, 'w', newline='') as csvfile:
        csv_writer = csv.writer(csvfile)

        # Write header
        header = list(all_keys)
        csv_writer.writerow(header)

        # Write each file's data as a row
        for metrics in all_data:
            row = [metrics.get(key, "") for key in all_keys]
            csv_writer.writerow(row)

    print(f"Data written to {output_csv} successfully.")

def sample_from_csv(input_csv, output_csv, round, total_samples=500):
    # Read the CSV file
    df = pd.read_csv(input_csv)
    prv_round_lable=f"round{round-1}_label"
    
    # Check if 'round0_label' column exists
    if prv_round_lable not in df.columns:
        print("Error: 'round0_label' column not found in the CSV file.")
        return
    
    # Group by 'round0_label' and count the number of items in each group
    unique_groups = set(df[prv_round_lable])
    print(unique_groups)
    unique_groups_count = len(unique_groups)
    sample_per_group=total_samples//unique_groups_count
    print(sample_per_group)
    # If there is only one group, copy all rows to the output CSV
    if len(unique_groups) == 1:
        print("Only one group found. Will up sample the current group")
        # df.to_csv(output_csv, index=False)
        # return
    
    # Get the top two groups with the most items
    # top_groups = group_counts.nlargest(2).index.tolist()
    
    # Sample 500 rows with replacement from each of the top two groups
    sampled_df = pd.concat([
        df[df[prv_round_lable] == group].sample(n=sample_per_group, replace=True, random_state=1)
        for group in unique_groups
    ])
    
    # Write the sampled rows to the output CSV file
    sampled_df.to_csv(output_csv, index=False)
    print(f"CSV file '{output_csv}' created successfully with sampled rows.")

def sample_from_csv0(input_csv, output_csv, round, sample_size=500):
    # Read the CSV file
    df = pd.read_csv(input_csv)
    prv_round_lable=f"round{round-1}_label"
    
    # Check if 'round0_label' column exists
    if prv_round_lable not in df.columns:
        print("Error: 'round0_label' column not found in the CSV file.")
        return
    
    # Group by 'round0_label' and count the number of items in each group
    group_counts = df[prv_round_lable].value_counts()
    
    # If there is only one group, copy all rows to the output CSV
    if len(group_counts) == 1:
        print("Only one group found. Copying all rows to the output CSV.")
        df.to_csv(output_csv, index=False)
        return
    
    # Get the top two groups with the most items
    top_groups = group_counts.nlargest(2).index.tolist()
    
    # Sample 500 rows with replacement from each of the top two groups
    sampled_df = pd.concat([
        df[df[prv_round_lable] == group].sample(n=sample_size, replace=True, random_state=1)
        for group in top_groups
    ])
    
    # Write the sampled rows to the output CSV file
    sampled_df.to_csv(output_csv, index=False)
    print(f"CSV file '{output_csv}' created successfully with sampled rows.")

def process_csv(input_csv, output_csv="keys_and_encrypted_files.csv"):
    """
    Process a CSV file, splitting rows into two groups based on High Bits.
    Ensures each group has at least 500 items using sampling with replacement.
    Renames filenames from private_key_{i} to encrypted_{i}.
    Generates an output CSV with filename, High Bits, and round0_label columns.
    """
    # Step 1: Read the input CSV
    try:
        df = pd.read_csv(input_csv)
    except FileNotFoundError:
        print(f"Error: File '{input_csv}' not found.")
        return
    
    # Step 2: Split data into two groups based on High Bits
    group_0 = df[df["High Bits"] <= 1000].copy()
    group_1 = df[df["High Bits"] > 1000].copy()

    # Step 3: Ensure each group has at least 500 rows by sampling with replacement
    if len(group_0) < 500:
        group_0 = group_0.sample(500, replace=True, random_state=42)
    if len(group_1) < 500:
        group_1 = group_1.sample(500, replace=True, random_state=42)

    # Step 4: Add round0_label column to identify groups
    group_0["round0_label"] = 0
    group_1["round0_label"] = 1

    # Step 5: Combine the two groups back into one DataFrame
    result_df = pd.concat([group_0, group_1], ignore_index=True)

    # Step 6: Rename filenames from private_key_{i} to encrypted_{i}
    def rename_filename(row):
        if "private_key_" in row["Key File"]:
            number_part = (row["Key File"].split("_")[-1]).split('.')[0]
            return f"encrypted_{number_part}"
        return row["Key File"]
    
    result_df["filename"] = result_df.apply(rename_filename, axis=1)

    # Step 7: Generate the output CSV
    result_df = result_df[["filename", "High Bits", "round0_label"]]
    result_df.to_csv(output_csv, index=False)
    print(f"CSV file '{output_csv}' created successfully.")    

if __name__ == '__main__':
    
    parser = argparse.ArgumentParser(description="Process some files.")
    parser.add_argument("--lib", required=True, help="The library")
    parser.add_argument("--app", required=True, help="The application to process")    
    parser.add_argument("--base_dir", required=True, help="Base directory for the output")
    parser.add_argument("--round", default="0", type=int, help="The current round")
    # parser.add_argument("--stage", required=True, type=int, default=0, help="Analysis Stage. 0-generating input")
    args = parser.parse_args()

    # file_name_prefix = [prefix.strip() for prefix in args.fn_prefix.split(",")]
    # out_base_dir=os.path.join(args.base_dir,args.app)
    # if args.stage == 0:
        # if args.app == "rsa":        
        #     get_rsa_data(round=args.round, base_dir=args.base_dir,ndata=1000)
        # # elif args.app == "aes":
        # #     get_aes_data(round=args.round, base_dir=args.base_dir,ndata=10000)
        # else:
    get_data(lib=args.lib,app=args.app,round=args.round,base_dir=args.base_dir,ndata=3000)
            
    
    

    
    # csv_path = os.path.join(f"data","rsa",f"round0","output.csv")
    # key_count_csv = os.path.join(f"rsa","key_bits_data_input_two.csv")    
    # process_csv(input_csv=key_count_csv,output_csv=csv_path)
    
    
    # csv_path = os.path.join(f"/home/ubuntu/gnupg-test/data","rsa",f"round0","input.csv")
    # dir = os.path.join(f"/home/ubuntu/gnupg-test/data/rsa","input") 
    # create_key_file_csv(dir, output_csv=csv_path)

