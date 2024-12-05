# import pandas as pd
# import numpy as np
# import matplotlib.pyplot as plt
# from scipy.spatial.distance import cdist

# def read_clusters_from_csv(file_path, label_column, x_column, y_column, ignore_columns=None):
#     """
#     Read clusters from a CSV file, preserving the original indices.
#     """
#     df = pd.read_csv(file_path)
#     if ignore_columns:
#         df = df.drop(columns=ignore_columns)
#     clusters = {}
#     for label, group in df.groupby(label_column):
#         clusters[label] = group.copy()  # Keep all columns
#     return df, clusters

# def write_top_points_to_csv(original_df, results, output_file):
#     """
#     Write the top N point pairs to a new CSV file, including all columns from the original input file.
#     Each row in the output CSV represents a pair of points.
#     """
#     data = []
#     for result in results:
#         idx1 = result['index_cluster1']
#         idx2 = result['index_cluster2']
#         row1 = original_df.loc[idx1]
#         row2 = original_df.loc[idx2]

#         # Combine the data from both points into one dictionary
#         # combined_row = {}
#         # for col in original_df.columns:
#         #     combined_row[f'point1_{col}'] = row1[col]
#         #     combined_row[f'point2_{col}'] = row2[col]
#         # combined_row['distance'] = result['distance']
#         data.append(row1)
#         data.append(row2)

#     # Create DataFrame
#     output_df = pd.DataFrame(data)
#     # Write to CSV
#     output_df.to_csv(output_file, index=False)
#     print(f"Top points saved to {output_file}")

# def plot_farthest_points(original_df, results, label_column, x_column, y_column, filename="farthest_points_scatter.png"):
#     """
#     Plot all points from the original DataFrame, highlighting the selected top farthest points.
#     """
#     plt.figure(figsize=(8, 6))

#     # Plot all points grouped by their label
#     for label, group in original_df.groupby(label_column):
#         plt.scatter(group[x_column], group[y_column], label=f"Label {label}", alpha=0.6)

   
#     # Highlight selected points
#     for i, result in enumerate(results):
#         # Extract the points from the original DataFrame
#         point1 = original_df.loc[result["index_cluster1"], [x_column, y_column]]
#         point2 = original_df.loc[result["index_cluster2"], [x_column, y_column]]

#         # Highlight the points with larger markers
#         plt.scatter(point1[x_column], point1[y_column], color='blue', marker='s', s=100, edgecolor='black', label=f"Point {i+1}" if i == 0 else "")
#         plt.scatter(point2[x_column], point2[y_column], color='red', marker='^', s=100, edgecolor='black', label=f"Point {i+1}" if i == 0 else "")

#         # Draw a line connecting the selected points
#         plt.plot([point1[x_column], point2[x_column]], [point1[y_column], point2[y_column]], 'k--', linewidth=1)

#     plt.title("Top Farthest Connections Between Clusters")
#     plt.xlabel(x_column)
#     plt.ylabel(y_column)
#     plt.legend()
#     plt.grid(True)
#     plt.savefig(filename)
#     plt.close()
#     print(f"Plot saved as {filename}")


# def select_labels_max_elements(df, label_column):
#     """
#     Select two labels from the DataFrame's label column such that their combined count is maximum.
#     Ignore the label -1. If there is only one valid label, return it for both selected labels.
#     """
#     # Filter out -1 from the label column
#     valid_labels = df[df[label_column] != -1]

#     # Count occurrences of each label
#     label_counts = valid_labels[label_column].value_counts()

#     # Handle cases with no valid labels or only one valid label
#     if label_counts.empty:
#         return None, None  # No valid labels
#     if len(label_counts) == 1:
#         single_label = label_counts.index[0]
#         return single_label, single_label  # Only one label exists

#     # Select the top two labels with the highest counts
#     top_two_labels = label_counts.index[:2]

#     return top_two_labels[0], top_two_labels[1]

# def find_farthest_points_iterative(cluster1, cluster2, x_column, y_column, top_n):
#     """
#     Iteratively find the top n pairs of points with the greatest distance between two clusters.
#     After selecting each pair, remove all rows with the same filename as the selected points from both clusters.
#     If the selected points have the same filename, they are considered the same point.
#     In that case, randomly remove one of the points from its cluster and try again.
#     """
#     results = []

#     # Create copies of clusters to modify iteratively
#     cluster1 = cluster1.copy()
#     cluster2 = cluster2.copy()

#     for _ in range(top_n):
#         while True:
#             # If either cluster is empty, break the loop
#             if cluster1.empty or cluster2.empty:
#                 break

#             # Extract coordinates as NumPy arrays for distance calculations
#             cluster1_coords = cluster1[[x_column, y_column]].to_numpy()
#             cluster2_coords = cluster2[[x_column, y_column]].to_numpy()
#             distances = cdist(cluster1_coords, cluster2_coords, metric='euclidean')

#             # If all distances are NaN or clusters are empty, break
#             if distances.size == 0:
#                 break

#             # Find the indices of the maximum distance
#             max_idx = np.unravel_index(np.argmax(distances, axis=None), distances.shape)
#             i, j = max_idx

#             # Get the selected points
#             selected_point1 = cluster1.iloc[i]
#             selected_point2 = cluster2.iloc[j]

#             # Get their filenames
#             filename1 = selected_point1['filename']
#             filename2 = selected_point2['filename']

#             # Check if filenames are the same
#             if filename1 == filename2:
#                 # Filenames are the same, consider them the same point
#                 # Randomly remove one of the points from its cluster and try again
#                 remove_from_cluster = np.random.choice([1, 2])
#                 if remove_from_cluster == 1:
#                     # Remove the point from cluster1
#                     cluster1 = cluster1.drop(selected_point1.name)
#                 else:
#                     # Remove the point from cluster2
#                     cluster2 = cluster2.drop(selected_point2.name)
#                 # Continue to try again
#                 continue
#             else:
#                 # Filenames are different, proceed
#                 # Use original indices from the DataFrames
#                 index_cluster1 = selected_point1.name  # This is the index in the original DataFrame
#                 index_cluster2 = selected_point2.name

#                 # Store the result
#                 results.append({
#                     "index_cluster1": index_cluster1,
#                     "index_cluster2": index_cluster2,
#                     "filename1": filename1,
#                     "filename2": filename2,
#                     "distance": distances[i, j]
#                 })

#                 # Remove all rows with the same filename as the selected points from both clusters
#                 filenames_to_remove = [filename1, filename2]
#                 cluster1 = cluster1[~cluster1['filename'].isin(filenames_to_remove)]
#                 cluster2 = cluster2[~cluster2['filename'].isin(filenames_to_remove)]
#                 break  # Break the while loop and proceed to next iteration

#         # If either cluster is empty after removal, break the for loop
#         if cluster1.empty or cluster2.empty:
#             break

#     return results

# def process_farthest_points_iterative(
#     csv_file,
#     label_column,
#     x_column,
#     y_column,
#     ignore_columns=None,
#     top_n=5,
#     output_csv="top_farthest_points_unique.csv",
#     scatter_plot_file="farthest_points_scatter.png"
# ):
#     """
#     Process a CSV file iteratively to find the top farthest points between two labels in a clustering analysis.
#     """
#     # Read clusters from the CSV file
#     original_df, clusters = read_clusters_from_csv(csv_file, label_column, x_column, y_column, ignore_columns)

#     # Find unique labels excluding -1
#     cluster1_label, cluster2_label = select_labels_max_elements(original_df, label_column)

#     if cluster1_label is None or cluster2_label is None:
#         print("Not enough valid clusters to process.")
#         return

#     # Find the top farthest points iteratively
#     results = find_farthest_points_iterative(
#         clusters[cluster1_label],
#         clusters[cluster2_label],
#         x_column,
#         y_column,
#         top_n
#     )

#     # Save the top points to a new CSV file
#     if results:
#         write_top_points_to_csv(original_df, results, output_csv)
#         # Plot the clusters and save the scatter plot
#         plot_farthest_points(original_df, results, label_column, x_column, y_column, filename=scatter_plot_file)
#     else:
#         print("No results to save or plot.")

# # Example Usage
# if __name__ == "__main__":
#     process_farthest_points_iterative(
#         csv_file="../vipbench/data/distinctness1/round4/output_pacmap.csv",
#         label_column="round4_label",
#         x_column="0",
#         y_column="1",
#         ignore_columns=[],
#         top_n=5,
#         output_csv="top_farthest_points_iterative.csv",
#         scatter_plot_file="farthest_points_iterative_scatter.png"
#     )

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from scipy.spatial.distance import cdist

def read_clusters_from_csv(file_path, label_column, x_column, y_column, ignore_columns=None):
    """
    Read clusters from a CSV file, preserving the original indices.
    """
    df = pd.read_csv(file_path)
    if ignore_columns:
        df = df.drop(columns=ignore_columns)
    clusters = {}
    for label, group in df.groupby(label_column):
        clusters[label] = group.copy()  # Keep all columns
    return df, clusters

def write_top_points_to_csv(original_df, results, output_file):
    """
    Write the top N point pairs to a new CSV file, including all columns from the original input file.
    Each row in the output CSV represents a pair of points.
    """
    data = []
    for result in results:
        idx1 = result['index_cluster1']
        idx2 = result['index_cluster2']
        row1 = original_df.loc[idx1]
        row2 = original_df.loc[idx2]

        data.append(row1)
        data.append(row2)

    # Create DataFrame
    output_df = pd.DataFrame(data)
    # Write to CSV
    output_df.to_csv(output_file, index=False)
    print(f"Top points saved to {output_file}")

def plot_farthest_points(original_df, results, label_column, x_column, y_column, filename="farthest_points_scatter.png"):
    """
    Plot all points from the original DataFrame, highlighting the selected top farthest points.
    """
    plt.figure(figsize=(8, 6))

    # Plot all points grouped by their label
    for label, group in original_df.groupby(label_column):
        plt.scatter(group[x_column], group[y_column], label=f"Label {label}", alpha=0.6)

    # Highlight selected points
    for i, result in enumerate(results):
        # Extract the points from the original DataFrame
        point1 = original_df.loc[result["index_cluster1"], [x_column, y_column]]
        point2 = original_df.loc[result["index_cluster2"], [x_column, y_column]]

        # Highlight the points with larger markers
        plt.scatter(point1[x_column], point1[y_column], color='blue', marker='s', s=100, edgecolor='black', label=f"Point {i+1}" if i == 0 else "")
        plt.scatter(point2[x_column], point2[y_column], color='red', marker='^', s=100, edgecolor='black', label=f"Point {i+1}" if i == 0 else "")

        # Draw a line connecting the selected points
        plt.plot([point1[x_column], point2[x_column]], [point1[y_column], point2[y_column]], 'k--', linewidth=1)

    plt.title("Top Farthest Connections Between Clusters")
    plt.xlabel(x_column)
    plt.ylabel(y_column)
    plt.legend()
    plt.grid(True)
    plt.savefig(filename)
    plt.close()
    print(f"Plot saved as {filename}")

def select_labels_max_elements(df, label_column):
    """
    Select two labels from the DataFrame's label column such that their combined count is maximum.
    The two labels must have different unique elements (identified by the 'filename' column).
    Ignore the label -1. If there is only one valid label, return it for both selected labels.
    """
    # Filter out -1 from the label column
    valid_df = df[df[label_column] != -1]

    # Get labels sorted by counts
    label_counts = valid_df[label_column].value_counts()
    labels = label_counts.index.tolist()

    # If no valid labels, return None, None
    if not labels:
        return None, None

    # Prepare a dictionary of labels to their unique filenames
    label_to_filenames = {}
    for label in labels:
        filenames = set(valid_df[valid_df[label_column] == label]['filename'])
        label_to_filenames[label] = filenames

    # Try to find two labels with different unique elements (non-overlapping filenames)
    # I.e. Find clusters that are generated by different set of input points 
    for i in range(len(labels)):
        label_i = labels[i]
        filenames_i = label_to_filenames[label_i]
        for j in range(i + 1, len(labels)):
            label_j = labels[j]
            filenames_j = label_to_filenames[label_j]
            # Check if the filenames are disjoint
            if filenames_i.isdisjoint(filenames_j):
                # Found two labels with different unique elements
                return label_i, label_j

    
    
    
    # If no such pair is found, check if only one label exists
    if len(labels) == 1:
        return labels[0], labels[0]  # Only one label exists
    else:
        print("No two clusters have different unique elements.")
        #TODO as backup logic i.e. if we can't find such two clusters maybe just return any two clusters that at least have two different points
        return labels[0], labels[1]
        # return None, None

def find_farthest_points_iterative(cluster1, cluster2, x_column, y_column, top_n):
    """
    Iteratively find the top n pairs of points with the greatest distance between two clusters.
    After selecting each pair, remove all rows with the same filename as the selected points from both clusters.
    If the selected points have the same filename, they are considered the same point.
    In that case, randomly remove one of the points from its cluster and try again.
    """
    results = []

    # Create copies of clusters to modify iteratively
    cluster1 = cluster1.copy()
    cluster2 = cluster2.copy()

    for _ in range(top_n):
        while True:
            # If either cluster is empty, break the loop
            if cluster1.empty or cluster2.empty:
                break

            # Extract coordinates as NumPy arrays for distance calculations
            cluster1_coords = cluster1[[x_column, y_column]].to_numpy()
            cluster2_coords = cluster2[[x_column, y_column]].to_numpy()
            distances = cdist(cluster1_coords, cluster2_coords, metric='euclidean')

            # If all distances are NaN or clusters are empty, break
            if distances.size == 0:
                break

            # Find the indices of the maximum distance
            max_idx = np.unravel_index(np.argmax(distances, axis=None), distances.shape)
            i, j = max_idx

            # Get the selected points
            selected_point1 = cluster1.iloc[i]
            selected_point2 = cluster2.iloc[j]

            # Get their filenames
            filename1 = selected_point1['filename']
            filename2 = selected_point2['filename']

            # Check if filenames are the same
            if filename1 == filename2:
                # Filenames are the same, consider them the same point
                # Randomly remove one of the points from its cluster and try again
                remove_from_cluster = np.random.choice([1, 2])
                if remove_from_cluster == 1:
                    # Remove the point from cluster1
                    cluster1 = cluster1.drop(selected_point1.name)
                else:
                    # Remove the point from cluster2
                    cluster2 = cluster2.drop(selected_point2.name)
                # Continue to try again
                continue
            else:
                # Filenames are different, proceed
                # Use original indices from the DataFrames
                index_cluster1 = selected_point1.name  # This is the index in the original DataFrame
                index_cluster2 = selected_point2.name

                # Store the result
                results.append({
                    "index_cluster1": index_cluster1,
                    "index_cluster2": index_cluster2,
                    "filename1": filename1,
                    "filename2": filename2,
                    "distance": distances[i, j]
                })

                # Remove all rows with the same filename as the selected points from both clusters
                filenames_to_remove = [filename1, filename2]
                cluster1 = cluster1[~cluster1['filename'].isin(filenames_to_remove)]
                cluster2 = cluster2[~cluster2['filename'].isin(filenames_to_remove)]
                break  # Break the while loop and proceed to next iteration

        # If either cluster is empty after removal, break the for loop
        if cluster1.empty or cluster2.empty:
            break

    return results

def process_farthest_points_iterative(
    csv_file,
    label_column,
    x_column,
    y_column,
    ignore_columns=None,
    top_n=5,
    output_csv="top_farthest_points_unique.csv",
    scatter_plot_file="farthest_points_scatter.png"
):
    """
    Process a CSV file iteratively to find the top farthest points between two labels in a clustering analysis.
    """
    # Read clusters from the CSV file
    original_df, clusters = read_clusters_from_csv(csv_file, label_column, x_column, y_column, ignore_columns)

    # Find unique labels excluding -1
    cluster1_label, cluster2_label = select_labels_max_elements(original_df, label_column)

    if cluster1_label is None or cluster2_label is None:
        print("Not enough valid clusters to process.")
        return

    # Find the top farthest points iteratively
    results = find_farthest_points_iterative(
        clusters[cluster1_label],
        clusters[cluster2_label],
        x_column,
        y_column,
        top_n
    )

    # Save the top points to a new CSV file
    if results:
        write_top_points_to_csv(original_df, results, output_csv)
        # Plot the clusters and save the scatter plot
        plot_farthest_points(original_df, results, label_column, x_column, y_column, filename=scatter_plot_file)
    else:
        print("No results to save or plot.")

# Example Usage
if __name__ == "__main__":
    process_farthest_points_iterative(
        csv_file="../vipbench/data/distinctness1/round4/output_pacmap.csv",
        label_column="round4_label",
        x_column="0",
        y_column="1",
        ignore_columns=[],
        top_n=5,
        output_csv="top_farthest_points_iterative.csv",
        scatter_plot_file="farthest_points_iterative_scatter.png"
    )
