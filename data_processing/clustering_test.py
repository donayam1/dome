import numpy as np

from sklearn import metrics
import matplotlib.pyplot as plt

import hdbscan 
from scipy.cluster.hierarchy import dendrogram
from sklearn.metrics.pairwise import rbf_kernel
import os
from collections import Counter
import seaborn as sns
from sklearn.decomposition import PCA
import pandas as pd 
from sklearn.preprocessing import StandardScaler
import pacmap
import argparse
import numpy as np
from sklearn import metrics
import re 
from sklearn.metrics import adjusted_rand_score
from sklearn.metrics.cluster import rand_score
from sklearn.cluster import KMeans
from scatter_plot import scatter_plot_with_labels_multi_rounds
import sys


def my_pacmap(data,out_dir):
    pacmap_model = pacmap.PaCMAP(n_neighbors=10, n_components=2, random_state=42)
    X_pacmap = pacmap_model.fit_transform(data)
    return X_pacmap


def scatter_plot_with_labels_rand_index(app, base_dir, round):
    # Paths for input and output
    app_data_dir = os.path.join(f"{base_dir}","data",f"{app}")
    out_dir = os.path.join(f"{app_data_dir}", f"round{round}")
    output_file = os.path.join(out_dir, "output_pacmap.csv")
    input_file = os.path.join(out_dir, "input.csv")

    # Load the CSV files
    df1 = pd.read_csv(output_file)
    df2 = pd.read_csv(input_file)
    prv_round_label = f'round{int(round)-1}_label'
    curr_round_label = f'round{int(round)}_label'

    # Ensure necessary columns exist
    if 'filename' not in df1.columns or 'filename' not in df2.columns:
        print("Error: Both CSV files must contain a 'filename' column.")
        return
    if prv_round_label not in df2.columns:
        print(f"Error: The input CSV file must contain the column '{prv_round_label}'.")
        return
    if curr_round_label not in df1.columns:
        print(f"Error: The input CSV file must contain the column '{curr_round_label}'.")
        return

    # # Merge the two DataFrames on 'filename'
    # merged_df = pd.merge(df1, df2[['filename', prv_round_label]], on='filename', how='left')

    # # Extract x and y columns for the scatter plot
    # x_column = merged_df.columns[0]
    # y_column = merged_df.columns[1]


    # Add the prv_round_label column to df1 using iteration
    prv_round_label_values = []
    for _, row in df1.iterrows():
        filename = row['filename']
        prv_label = df2.loc[df2['filename'] == filename, prv_round_label]
        prv_round_label_values.append(prv_label.iloc[0] if not prv_label.empty else -1)
    
    # Add the extracted values to df1
    df1[prv_round_label] = prv_round_label_values
    # Extract x and y columns for the scatter plot
    x_column = "0"
    y_column = "1"

    # Plot the scatter plot using the labels for color
    plt.figure(figsize=(8, 6))
    scatter = plt.scatter(
        df1[x_column],
        df1[y_column],
        c=df1[prv_round_label],
        cmap='viridis',
        s=50
    )
    plt.colorbar(scatter, label='Target Label')
    plt.title('PaCMAP Projection')
    plt.xlabel('PaCMAP Component 1')
    plt.ylabel('PaCMAP Component 2')
    plt.savefig(f"{out_dir}/pacmap.png")
    plt.close()

    # Extract labels
    r1_labels = df1[prv_round_label].fillna(-1).astype(int)
    labels = df1[curr_round_label].fillna(-1).astype(int)

    # Compute Rand Index and Adjusted Rand Index
    print("Computing Rand Index and Adjusted Rand Index...")
    try:
        rand_idx = rand_score(r1_labels, labels)
        adjusted_rand_idx = adjusted_rand_score(r1_labels, labels)
    except Exception as e:
        print(f"Error computing indices: {e}")
        return

    # Write the results to stat.txt
    output_file = os.path.join(out_dir, "stat.txt")
    with open(output_file, 'a') as f:
        f.write(f"Rand Index: {rand_idx:.3f}\n")
        f.write(f"Adjusted Rand Index: {adjusted_rand_idx:.3f}\n")

    print(f"Scatter plot saved at {out_dir}/pacmap.png")
    print(f"Rand Index: {rand_idx:.3f}")
    print(f"Adjusted Rand Index: {adjusted_rand_idx:.3f}")



def ReadData_fromCsv1(filename, colums_to_ignore=[],normalize=True):    
    if not os.path.exists(filename):
        return pd.DataFrame()
    
    data = pd.read_csv(filename)
    
    # Remove columns that contain only zeros
    data = data.loc[:, (data != 0).any(axis=0)]
    
    columns_to_drop = colums_to_ignore
    columns_to_drop_existing = [col for col in columns_to_drop if col in data.columns]
    
    # Separate features to normalize and columns to ignore
    features_to_normalize = data.drop(columns_to_drop_existing, axis=1)
    columns_ignored = data[colums_to_ignore] if colums_to_ignore else pd.DataFrame()

    # if normalize:
    # Apply StandardScaler to the features that need normalization
    scaler = StandardScaler()
    scaled_data = scaler.fit_transform(features_to_normalize)
    scaled_df = pd.DataFrame(scaled_data, columns=features_to_normalize.columns)
    
    # Combine scaled features, ignored columns, labels, and clusters
    combined_df = pd.concat([scaled_df, columns_ignored], axis=1)
    # else:
    #     combined_df = data  # Use original data if no normalization is required
    
    return combined_df, data 

def merge_clusters_by_filename(filenames, labels):
    """
    Merge clusters based on filenames and return new labels.

    Parameters:
    filenames (array-like): An array of filenames corresponding to each data point.
    labels (array-like): An array of cluster labels assigned to each data point.

    Returns:
    new_labels (numpy.ndarray): An array of new cluster labels after merging.
    """
    

    labels = np.array(labels)
    filenames = np.array(filenames)

    new_labels = labels.copy()

    # Get unique labels excluding noise label -1
    unique_labels = np.unique(labels)
    unique_labels = unique_labels[unique_labels != -1]

    # Step 1: Map labels to filenames where all filenames in the cluster are the same
    label_to_filename = {}

    for label in unique_labels:
        indices = np.where(labels == label)[0]
        filenames_in_label = filenames[indices]
        unique_filenames = np.unique(filenames_in_label)
        if len(unique_filenames) == 1:
            label_to_filename[label] = unique_filenames[0]

    # Step 2: Merge labels that have the same filename
    filename_to_labels = {}
    for label, filename in label_to_filename.items():
        filename_to_labels.setdefault(filename, []).append(label)

    for filename, labels_list in filename_to_labels.items():
        if len(labels_list) > 1:
            min_label = min(labels_list)
            for label in labels_list:
                indices = np.where(labels == label)[0]
                new_labels[indices] = min_label

    return new_labels

def kmeans_test(base_dir, round, app, do_pacmap=1, fast=0):
    print("fast=", fast, type(fast))
    
    # Ensure 'round' is an integer
    app_data_dir = os.path.join(f"{base_dir}", "data", f"{app}")
    round_num = int(round)
    label_col_name = f"round{round_num}_label"
    out_dir = os.path.join(f"{app_data_dir}", f"round{round_num}")
    input_csv_path = os.path.join(out_dir, "output.csv")

    # Columns to ignore during clustering
    columns_to_ignore = ["filename"]
    all_data, original_all_data = ReadData_fromCsv1(input_csv_path, colums_to_ignore=columns_to_ignore)

    if len(all_data) == 0:
        print("Error: Empty DataFrame")
        return

    filenames = original_all_data["filename"]  # Keep filenames separately for matching
    all_data = all_data.drop(columns_to_ignore, axis=1)  # Drop ignored columns
    original_all_data = original_all_data.drop(columns_to_ignore, axis=1)

    # Store original data for pair plot before transformation
    original_all_data_for_plot = all_data.copy()

    # Apply PaCMAP if specified
    if do_pacmap == 1:
        pac_transformed = my_pacmap(all_data, out_dir)
        all_data = pd.DataFrame(pac_transformed)

    X = all_data.values
    print("Shape of transformed data:", np.shape(X))
    
    # Remove HDBSCAN logic and use KMeans with n_clusters=2
    # KMeans requires n_clusters parameter. Let's set n_clusters=2 as requested.
    km = KMeans(n_clusters=2, random_state=0)
    km.fit(X)
    labels = km.labels_
    
    # Merge clusters by filename if needed (as previously)
    labels = merge_clusters_by_filename(filenames=filenames, labels=labels)

    # Remove HDBSCAN condensed tree plotting as it's not applicable to KMeans

    # Add the cluster labels to the original data DataFrame by matching filenames
    original_all_data[label_col_name] = labels

    # Write clustering statistics to a file
    unique_labels = set(labels)
    output_file = os.path.join(out_dir, "stat.txt")
    with open(output_file, 'w') as f:
        f.write(f"Unique clusters: {unique_labels}\n")
        for cluster in unique_labels:
            f.write(f"Points in cluster {cluster}: {np.sum(labels == cluster)}\n")
        # Silhouette score makes sense for KMeans as well
        f.write(f"Silhouette Coefficient: {metrics.silhouette_score(X, labels):.3f}\n")

    print(f"Silhouette Coefficient: {metrics.silhouette_score(X, labels):.3f}")

    # Plot pairplot with the original (non-transformed) data and custom palette for clusters
    if fast == 0:
        original_all_data_for_plot[label_col_name] = labels  # Add labels to the non-transformed data for plotting
        palette = sns.color_palette("hsv", len(unique_labels))
        sns.pairplot(original_all_data_for_plot, hue=label_col_name, palette=palette, corner=True)
        plt.savefig(os.path.join(out_dir, "pairplot.png"))
        plt.close()

    # Add 'filename' back to the final data
    original_all_data["filename"] = filenames

    # Save the updated DataFrame with cluster labels
    original_all_data.to_csv(os.path.join(out_dir, "output.csv"), index=False)

    if do_pacmap == 1:
        all_data[label_col_name] = labels
        all_data["filename"] = filenames
        all_data.to_csv(os.path.join(out_dir, "output_pacmap.csv"), index=False)    
        scatter_plot_with_labels_rand_index(app=app, base_dir=base_dir, round=round)
    
    print(f"Updated CSV saved with filename and label columns: '{os.path.join(out_dir, 'output.csv')}'")

def hdbscan_test(base_dir, round, app, do_pacmap=1,fast=0):
    print("fast=",fast,type(fast))
    
    # Ensure 'round' is an integer
    app_data_dir =os.path.join(f"{base_dir}","data",f"{app}")
    round_num = int(round)
    label_col_name = f"round{round_num}_label"
    out_dir = os.path.join(f"{app_data_dir}", f"round{round_num}")
    input_csv_path = os.path.join(out_dir, "output.csv")

    # Columns to ignore during clustering
    columns_to_ignore = ["filename"]
    all_data, original_all_data = ReadData_fromCsv1(input_csv_path, colums_to_ignore=columns_to_ignore)

    if len(all_data) == 0:
        print("Error: Empty DataFrame")
        return

    filenames = original_all_data["filename"]  # Keep filenames separately for matching
    all_data = all_data.drop(columns_to_ignore, axis=1)  # Drop ignored columns
    original_all_data = original_all_data.drop(columns_to_ignore, axis=1)

    # Store original data for pair plot before transformation
    original_all_data_for_plot = all_data.copy()

    # Apply PaCMAP if specified
    if do_pacmap == 1:
        pac_transformed = my_pacmap(all_data, out_dir)
        all_data = pd.DataFrame(pac_transformed)

    X = all_data.values
    print("Shape of transformed data:", np.shape(X))
    min_c_size = 5 +(int(round)*10) #80
    # Perform HDBSCAN clustering
    db = hdbscan.HDBSCAN(min_cluster_size=min_c_size, min_samples=10, metric="euclidean", allow_single_cluster=True).fit(X)
    labels = db.labels_
    labels = merge_clusters_by_filename(filenames=filenames, labels=labels)

    
    # Plot the Condensed Tree
    try:
        db.condensed_tree_.plot(select_clusters=True, selection_palette=sns.color_palette())
        plt.savefig(os.path.join(out_dir, "COT.png"))
        plt.close()
    except Exception as e:
        print(f"Exception in plotting Condensed Tree: {e}")

    # Add the cluster labels to the original data DataFrame by matching filenames
    original_all_data[label_col_name] = labels

    # Write clustering statistics to a file
    unique_labels = set(labels)
    output_file = os.path.join(out_dir, "stat.txt")
    with open(output_file, 'w') as f:
        f.write(f"Unique clusters: {unique_labels}\n")
        for cluster in unique_labels:
            f.write(f"Points in cluster {cluster}: {np.sum(labels == cluster)}\n")
        f.write(f"Silhouette Coefficient: {metrics.silhouette_score(X, labels):.3f}\n")

    print(f"Silhouette Coefficient: {metrics.silhouette_score(X, labels):.3f}")

    # Plot pairplot with the original (non-transformed) data and custom palette for clusters
    if fast == 0:
        original_all_data_for_plot[label_col_name] = labels  # Add labels to the non-transformed data for plotting
        palette = sns.color_palette("hsv", len(unique_labels))
        sns.pairplot(original_all_data_for_plot, hue=label_col_name, palette=palette, corner=True)
        plt.savefig(os.path.join(out_dir, "pairplot.png"))
        plt.close()

    # Add 'filename' back to the final data
    original_all_data["filename"] = filenames

    # Save the updated DataFrame with cluster labels to the original CSV format
    original_all_data.to_csv(os.path.join(out_dir, "output.csv"), index=False)
    
    
    if do_pacmap == 1:
        all_data[label_col_name] = labels
        all_data["filename"] = filenames
        all_data.to_csv(os.path.join(out_dir, "output_pacmap.csv"), index=False)    
        scatter_plot_with_labels_rand_index(app=app,base_dir=base_dir,round=round)
    
    print(f"Updated CSV saved with filename and label columns: '{os.path.join(out_dir, 'output.csv')}'")
    
def compute_mmd(X, Y, sigma=1.0):
    """
    Compute Maximum Mean Discrepancy (MMD) between two samples X and Y using an RBF kernel.
    
    Parameters:
    X : numpy array of shape (n_samples_X, n_features)
        First dataset.
    Y : numpy array of shape (n_samples_Y, n_features)
        Second dataset.
    sigma : float
        Bandwidth parameter for the RBF kernel.
    
    Returns:
    mmd_value : float
        The MMD value between the two datasets.
    """
    # Compute the RBF (Gaussian) kernel between the samples
    K_XX = rbf_kernel(X, X, gamma=1.0 )  # Kernel matrix for X
    K_YY = rbf_kernel(Y, Y, gamma=1.0 )  # Kernel matrix for Y
    K_XY = rbf_kernel(X, Y, gamma=1.0 )  # Kernel matrix between X and Y

    # Compute MMD
    mmd_value = np.mean(K_XX) + np.mean(K_YY) - 2 * np.mean(K_XY)
    return mmd_value



def plot_mmd_distribution(mmd_values, observed_mmd,thrushhold, p_value,label_t,label_f,outputname):
    """Plot the distribution of MMD values from the permutation test and highlight the observed MMD value."""
    plt.figure(figsize=(8, 6))
    
    # Plot the histogram of permuted MMD values
    plt.hist(mmd_values, bins=30, color='skyblue', alpha=0.7, label='Permuted MMD Values (Null Distribution)')
    
    # Plot the observed MMD value as a vertical line
    plt.axvline(observed_mmd, color='red', linestyle='--', linewidth=2, label=f'Observed MMD = {observed_mmd:.4f}')
    plt.axvline(thrushhold, color='blue', linestyle='--', linewidth=2, label=f'Thrushold MMD = {thrushhold:.4f}')
    
    # Add labels and title
    plt.title(f'Permutation Test for MMD b/n ({label_t},{label_f})\nObserved MMD: {observed_mmd:.4f}, P-value: {p_value:.4f} , thrushold:{thrushhold:.4f}', fontsize=14)
    plt.xlabel('MMD Value', fontsize=12)
    plt.ylabel('Frequency', fontsize=12)
    
    # Add legend
    plt.legend(loc='best')
    
    # Show the plot
    plt.savefig(outputname)
    plt.close()
   

def bootstrap_mmd_threshold(combined, n_X, num_bootstrap=1000, significance_level=0.05, gamma=1.0):
    """
    Calculate an MMD threshold using a bootstrap approach.
    
    Parameters:
    - X, Y: Input distributions, arrays of shape (n_samples, n_features).
    - num_bootstrap: Number of bootstrap samples to generate.
    - significance_level: Desired significance level (e.g., 0.05).
    - gamma: Kernel parameter for RBF kernel.

    Returns:
    - threshold: MMD threshold value at the specified significance level.
    """
    bootstrap_mmds = []
    # combined = np.vstack([X, Y])
    # n_X = len(combined)//2
    
    for _ in range(num_bootstrap):
        # Resample from the combined distribution
        resampled = np.random.choice(len(combined), len(combined), replace=True)
        # print(resampled)
        resampled_X = combined[resampled[:n_X]]
        resampled_Y = combined[resampled[n_X:]]
        
        # Calculate MMD for the resampled distributions
        mmd_value = compute_mmd(resampled_X, resampled_Y, sigma=gamma)
        bootstrap_mmds.append(mmd_value)
    
    # Determine threshold based on the upper percentile
    threshold = np.percentile(bootstrap_mmds, 100 * (1 - significance_level))
    
    return threshold,bootstrap_mmds


def ht(app,base_dir,round):
    round_label = f"round{round}_label"
    colums_to_ignore=["filename",round_label]
    out_dir = os.path.join(f"{base_dir}","data",f"{app}",f"round{round}")
    input_csv_path = os.path.join(out_dir,"output.csv")
    
    data,org = ReadData_fromCsv1(input_csv_path,colums_to_ignore=colums_to_ignore,normalize=True) #np.array(DirToArray(datadir))        
    if len(data) == 0:
            print("error length is zero")     

    labels_true = data[round_label] #np.squeeze(train[:,18:19]) 
    # file_names = data["filename"] #np.squeeze(train[:,18:19]) 
    data = data.drop(colums_to_ignore,axis=1) #np.squeeze(train[:,18:19]) 
    
    # Set parameters
    num_bootstrap = 1000
    significance_level = 0.05
    gamma = 1.0  # RBF kernel parameter

    
    data[round_label] = labels_true
    cluster_labels = set(data[round_label])
    cluster_labels.discard(-1)
    if len(cluster_labels)<=1:
        print("Only one cluster can't do ht")
        sys.exit()
    # # Get the two most common labels
    top_two_labels = data[round_label].value_counts().nlargest(2).index.tolist()
    label_i,label_j = top_two_labels[0],top_two_labels[1]
    
    # org = data.copy()
    # clusers_to_merge=[]
    # for i, label_i in enumerate(cluster_labels):
    #     for j, label_j in enumerate(cluster_labels):
    #         if i >= j:
    #             continue 
            
    d2 = data[data[round_label].isin([label_i,label_j])]
    
    trues  = d2[data[round_label]==label_i]        
    trues = trues.drop(round_label,axis=1)
    falses = d2[data[round_label]==label_j]
    falses = falses.drop(round_label,axis=1)
    
    threshold,bootstrap_mmds = bootstrap_mmd_threshold(d2.values,n_X=len(trues), num_bootstrap=num_bootstrap, significance_level=significance_level, gamma=gamma)
    print(f"Bootstrap MMD threshold at significance level {significance_level}: {threshold}")
    
    
    # Compute actual MMD between the original distributions
    mmd_actual = compute_mmd(trues, falses, sigma=gamma)
    print(f"MMD between original distributions ({label_i},{label_j}): {mmd_actual}")            
    
    # Decision
    print("Null hypothesis is: The distributions are similar")
    if mmd_actual < threshold:
        print("Conclusion = The distributions are similar (cannot reject the null hypothesis).")
        # clusers_to_merge.append((i,j))
    else:
        print("Conclusion = The distributions are different (reject the null hypothesis).")

    plot_mmd_distribution(bootstrap_mmds,mmd_actual,threshold,0.05,label_i,label_j,f"{out_dir}/mmd_ht_{label_i}_{label_j}.png")
    
    
if __name__ == "__main__":

    parser = argparse.ArgumentParser(description="Process some files.")
    # Add arguments
    # parser.add_argument("--stage", required=True, type=int, default=0, help="Analysis Stage. 0-generating input")
    parser.add_argument("--app", required=True, help="The application to process")
    parser.add_argument("--base_dir", required=True, help="Script result output directory")
    # parser.add_argument("--input_dir", required=True, help="Data input directory")
    # parser.add_argument("--input_file", required=True, help="Data input directory")
    parser.add_argument("--round",  required=True, help="Data input directory")
    parser.add_argument("--fast", type=int, default="0", help="disable HT and ")

    
    args = parser.parse_args()
    print("fast in main=",args.fast,type(args.fast))
    # res= hdbscan_test(base_dir=args.base_dir,round=args.round,app=args.app,fast=args.fast)
    res= kmeans_test(base_dir=args.base_dir,round=args.round,app=args.app,fast=args.fast)
    # if args.fast == 0:
        # ht(app=args.app,base_dir=args.base_dir,round=args.round)
    if int(args.round) == 10:
        app = args.app 
        base_dir = args.base_dir 
        rounds = range(1, 11)  # Rounds 1 through 10

        scatter_plot_with_labels_multi_rounds(app, base_dir, rounds)

