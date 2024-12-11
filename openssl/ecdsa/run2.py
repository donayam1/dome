#!/usr/bin/python3
import os
import sys
import subprocess
import pandas as pd
import argparse
import csv 
import getpass
# Set the library path
os.environ["LD_LIBRARY_PATH"] = "/home/donayam/Documents/dove_workspace/libs/libpfm4/lib"

def read_to_csv(app,base_dir,round):
    
    app_data_dir = os.path.join( f"{base_dir}","data",f"{app}") 
    # Set the directory containing the text files
    output_full_path=os.path.join(f"{app_data_dir}",f"round{round}","output.csv") 
    input_dir= os.path.join(f"{app_data_dir}",f"round{round}","output")
    
    directory = input_dir
    output_csv = output_full_path

    # Initialize a list to store all the data for CSV
    all_data = []
    integer_part = round 
    integer_part = int(integer_part)
    # Process each file in the directory
    for filename in os.listdir(directory):
        # if filename.endswith(".txt"):
        # Extract prev_label from the filename
        # base_name = os.path.splitext(filename)[0]  # Remove any extension
        # prev_label = base_name.split("_")[-1]  # Take the last part after splitting by '_'

        with open(os.path.join(directory, filename), 'r') as file:
            lines = file.readlines()

            # Remove the first 4 lines
            lines = lines[4:]

            # Parse the lines and collect data
            metrics = {}  # Start metrics with prev_labelf"round{integer_part-1}_label": prev_label
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
            metrics["filename"] = os.path.splitext(filename)[0]  # Add the filename for reference
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
    
    username = os.environ.get("SUDO_USER", os.getlogin())  # Fallback to os.getlogin() if SUDO_USER is not set    
    subprocess.run(["sudo", "chown", f"{username}:{username}", output_csv])
    print(f"Data written to {output_csv} successfully.")
    


def run_experiment(app,round,base_dir):
    # round = args.round 
    app_data_dir = os.path.join( f"{base_dir}","data",f"{app}") 
    
    input_csv = os.path.join(f"{app_data_dir}",f"round{round}","input.csv")
    output_dir = os.path.join(f"{app_data_dir}",f"round{round}","output")
    input_dir = os.path.join(f"{app_data_dir}","input")
    
    # Ensure output directory exists
    os.makedirs(output_dir, exist_ok=True)
    print(f"Output directory created: {output_dir}")

    # Read CSV file
    try:
        df = pd.read_csv(input_csv)
    except FileNotFoundError:
        print(f"Error: CSV file '{input_csv}' not found.")
        sys.exit(1)

    # Ensure the CSV has the necessary columns
    required_columns = {"filename"} #"private_key", "public_key",
    if not required_columns.issubset(df.columns):
        print(f"Error: CSV file must contain columns: {', '.join(required_columns)}")
        sys.exit(1)

    # Process each row in the CSV file
    for index, row in df.iterrows():
        filename = row['filename']
        fid = (filename.split("_")[-1]).split(".")[0]
        # fenc_name = filename.split("_")[0]
        private_key = os.path.join(input_dir,f'private_key_{fid}.pem')
        public_key = os.path.join(input_dir,f'public_key_{fid}.pem')
        # encrypted_file = os.path.join(input_dir,f'{fenc_name}_{fid}.bin')
        
        # Extract identifiers from the private key filename
        basename = os.path.basename(private_key)
        I = basename.split('_')[-1].split('.')[0]
        

        # Define output filename using the extracted identifiers
        outfn = os.path.join(output_dir, f"encrypted_{I}.{index}")
        
        # Check if the specified public_key and encrypted file exist
        if os.path.isfile(public_key) and os.path.isfile(private_key):
            # Call the external command with subprocess
            subprocess.run(["taskset","-c","2",
                "./main",
                "--public_key", public_key,
                "--private_key", private_key,
                "--output", outfn,
                # "--input", encrypted_file
            ])
            # print(f"Processed set with  I={I} - output file: {outfn}")
        else:
            print(f"Skipping row {index}: Missing file(s) - {public_key}")# or {encrypted_file}")
            
    read_to_csv(app=app,round=round,base_dir=base_dir)

    print("Finished running experiment")

if __name__ == "__main__":
    # Argument parser setup
    parser = argparse.ArgumentParser(description="Process RSA files from CSV input.")
    parser.add_argument("--round", type=str, default="0", help="Specify the round number (default: round1)")
    parser.add_argument("--base_dir", type=str, help="Path to the input CSV file", required=True)
    parser.add_argument("--app", type=str, help="Name of the app", required=True)
    parser.add_argument("--core", type=str, help="Name of the app", default="2")
    args = parser.parse_args()

    run_experiment(app=args.app,round=args.round,base_dir=args.base_dir)
    
