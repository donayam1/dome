import os
import subprocess
import csv
import re
import shutil
import os 
os.environ["LD_LIBRARY_PATH"] = "/home/donayam/Documents/dove_workspace/libs/libgcrypt-1.8.11/build/lib:/home/donayam/Documents/dove_workspace/libs/libpfm4/lib"

def count_keys(key_dir,output):
    # Path to the directory containing the key files (change if necessary)
    

    # Path to the C++ executable (make sure it's compiled and accessible)
    program = './bitcount'  # Replace with the correct path if different

    # Output CSV file
    output_csv = output

    # Find all files starting with 'private_key_' in the directory
    key_files = [
        f for f in os.listdir(key_dir)
        if f.startswith('private_key_') and os.path.isfile(os.path.join(key_dir, f))
    ]

    # List to hold the collected data
    data = []

    for key_file in key_files:
        # Full path to the key file
        key_file_path = os.path.join(key_dir, key_file)
        
        # Call the C++ program with the key file
        try:
            # Run the program and capture the output
            result = subprocess.run(
                [program, key_file_path],
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True
            )
            output = result.stdout
            error = result.stderr
            
            if result.returncode != 0:
                print(f"Error processing {key_file}: {error.strip()}")
                continue
            
            # Extract total bits and high bits from the output using regular expressions
            total_bits_match = re.search(r'Total bits in private exponent \(d\): (\d+)', output)
            high_bits_match = re.search(r'Number of high bits in private exponent \(d\): (\d+)', output)
            
            if total_bits_match and high_bits_match:
                total_bits = int(total_bits_match.group(1))
                high_bits = int(high_bits_match.group(1))
                data.append([key_file, total_bits, high_bits])
            else:
                print(f"Failed to parse output for {key_file}")
        except Exception as e:
            print(f"Exception processing {key_file}: {e}")

    # Write the collected data to a CSV file
    with open(output_csv, 'w', newline='') as csvfile:
        csv_writer = csv.writer(csvfile)
        # Write the header
        csv_writer.writerow(['Key File', 'Total Bits', 'High Bits'])
        # Write the data rows
        csv_writer.writerows(data)

    print(f"Data successfully written to {output_csv}")

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
def plots(input_csv,output):
    # Input CSV file
    # input_csv = 'key_bits_data.csv'

    # Lists to hold the data
    key_files = []
    total_bits_list = []
    high_bits_list = []

    # Read the CSV file
    with open(input_csv, 'r') as csvfile:
        csv_reader = csv.reader(csvfile)
        # Skip the header
        next(csv_reader)
        for row in csv_reader:
            key_file, total_bits, high_bits = row
            key_files.append(key_file)
            total_bits_list.append(int(total_bits))
            high_bits_list.append(int(high_bits))

    # Create a DataFrame for easier manipulation
    df = pd.DataFrame({
        'Key File': key_files,
        'Total Bits': total_bits_list,
        'High Bits': high_bits_list
    })

    # Calculate the ratio of high bits to total bits
    df['High Bits Ratio'] = df['High Bits'] / df['Total Bits']

    # # Plot the frequency of set bits vs key lengths
    # plt.figure(figsize=(10, 6))
    # plt.scatter(df['Total Bits'], df['High Bits'], color='blue', alpha=0.7, edgecolors='w', s=100)
    # plt.title('Number of High Bits vs. Total Bits in Private Exponent (d)')
    # plt.xlabel('Total Bits in Private Exponent (d)')
    # plt.ylabel('Number of High Bits in Private Exponent (d)')
    # plt.grid(True)
    # plt.savefig("plot1.png")
    # plt.close()

    # Plot the distribution of high bits
    plt.figure(figsize=(10, 6))
    sns.histplot(df['High Bits'], bins=30, kde=True, color='green', alpha=0.7)
    plt.title('Distribution of High Bits in Private Exponent (d)')
    plt.xlabel('Number of High Bits')
    plt.ylabel('Frequency')
    plt.grid(True)
    plt.savefig(output)
    plt.close()

    # # Plot the distribution of high bits ratio
    # plt.figure(figsize=(10, 6))
    # sns.histplot(df['High Bits Ratio'], bins=30, kde=True, color='orange', alpha=0.7)
    # plt.title('Distribution of High Bits Ratio in Private Exponent (d)')
    # plt.xlabel('High Bits Ratio')
    # plt.ylabel('Frequency')
    # plt.grid(True)
    # plt.savefig("plot3.png")
    # plt.close()

    # # Box plot of high bits
    # plt.figure(figsize=(8, 6))
    # sns.boxplot(y=df['High Bits'], color='cyan')
    # plt.title('Box Plot of High Bits in Private Exponent (d)')
    # plt.ylabel('Number of High Bits')
    # plt.grid(True)
    # plt.savefig("plot4.png")
    # plt.close()

    # Print statistical summary
    # print("Statistical Summary of High Bits:")
    # print(df['High Bits'].describe())

    # # Identify any anomalies (e.g., keys with unusually low/high number of high bits)
    # mean = df['High Bits'].mean()
    # std_dev = df['High Bits'].std()
    # threshold = 3 * std_dev

    # # Keys with high bits beyond 3 standard deviations from the mean
    # anomalies = df[(df['High Bits'] < (mean - threshold)) | (df['High Bits'] > (mean + threshold))]

    # if not anomalies.empty:
    #     print("\nAnomalous keys detected:")
    #     print(anomalies[['Key File', 'Total Bits', 'High Bits']])
    # else:
    #     print("\nNo significant anomalies detected in the high bits count.")

def copy_keys_based_on_high_bits(source_dir, output_dir, csv_file='key_bits_data.csv'):
    """
    Copies key files from the source directory to the output directory based on high bits criteria.

    Parameters:
    - source_dir (str): The directory where the key files are located.
    - output_dir (str): The directory where selected key files will be copied to.
    - csv_file (str): The CSV file containing key file names and bit information. Default is 'key_bits_data.csv'.

    The function copies keys with high bits less than 1000 or greater than 1040.
    """
    # Ensure the output directory exists
    os.makedirs(output_dir, exist_ok=True)
    
    # Read the CSV file
    with open(csv_file, 'r', newline='') as csvfile:
        csv_reader = csv.reader(csvfile)
        # Skip the header
        next(csv_reader)
        for row in csv_reader:
            key_file_name, total_bits, high_bits = row
            total_bits = int(total_bits)
            high_bits = int(high_bits)
            
            # Check the high bits criteria
            if high_bits < 975 or high_bits > 1070:
            # if high_bits < 1000 or high_bits > 1040:
                num = (key_file_name.split("_")[-1]).split(".")[0]
                # print(num)
                source_file_path_public = os.path.join(source_dir, f"public_key_{num}.pem")
                source_file_path_encrypted = os.path.join(source_dir, f"encrypted_{num}.bin")                
                source_file_path = os.path.join(source_dir, key_file_name)
                
                destination_file_path_public = os.path.join(output_dir, f"public_key_{num}.pem")
                destination_file_path_encrypted = os.path.join(output_dir, f"encrypted_{num}.bin")
                destination_file_path = os.path.join(output_dir, key_file_name)
                try:
                    shutil.copy2(source_file_path_public, destination_file_path_public)
                    shutil.copy2(source_file_path_encrypted, destination_file_path_encrypted)
                    shutil.copy2(source_file_path, destination_file_path)
                    # print(f"Copied {key_file_name} to {output_dir}")
                except FileNotFoundError:
                    print(f"File {key_file_name} not found in {source_dir}")
                except Exception as e:
                    print(f"Error copying {key_file_name}: {e}")


if __name__ == '__main__':
    count_keys(key_dir="../data/rsa/input",output="../data/rsa/key_bits_data_input_new.csv")
    plots(input_csv="../data/rsa/key_bits_data_input_new.csv",output="../data/rsa/high_key_bit_distribution_input_new.png")
    # copy_keys_based_on_high_bits(source_dir="../data/rsa_0/input0", output_dir="../data/rsa/input", csv_file='key_bits_data_input0.csv')