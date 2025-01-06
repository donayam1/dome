import os
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.metrics import adjusted_rand_score, rand_score

def scatter_plot_with_labels_multi_rounds(app, base_dir, rounds):
    # Create a figure with 2 rows and 5 columns
    fig, axes = plt.subplots(2, 5, figsize=(25, 10))
    plt.subplots_adjust(hspace=0.3)
    axes = axes.flatten()  # Flatten for easier indexing

    for i, round in enumerate(rounds):
        # Paths for input and output
        app_data_dir = os.path.join(f"{base_dir}", "data", f"{app}")
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
            print(f"Error in round {round}: Both CSV files must contain a 'filename' column.")
            continue
        if prv_round_label not in df2.columns:
            print(f"Error in round {round}: The input CSV file must contain the column '{prv_round_label}'.")
            continue
        if curr_round_label not in df1.columns:
            print(f"Error in round {round}: The input CSV file must contain the column '{curr_round_label}'.")
            continue


#         # Read Rand Index from stat.txt
        stat_file = os.path.join(out_dir, "stat.txt")
        if os.path.exists(stat_file):
            with open(stat_file, "r") as f:
                stat_lines = f.readlines()
                rand_index_line = next((line for line in stat_lines if line.startswith("Adjusted Rand Index:")), None)
                rand_index = float(rand_index_line.split(":")[1].strip()) if rand_index_line else None
        else:
            rand_index = None
        
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

        # Plot the scatter plot in the corresponding subplot
        scatter = axes[i].scatter(
            df1[x_column],
            df1[y_column],
            c=df1[prv_round_label],
            cmap='viridis',
            s=50
        )
        
        # axes[i].set_title(f'Round {round}')
        axes[i].set_title(f"Round {round}: Adjusted Rand Index: {rand_index:.3f}")
        axes[i].set_xlabel('PaCMAP Component 1')
        axes[i].set_ylabel('PaCMAP Component 2',labelpad=-2)
    
    plt.savefig(f"{base_dir}/data/{app}/scatter_plot_multi_rounds.png")
    plt.close()
    print(f"Scatter plots for all rounds saved at {base_dir}/scatter_plot_multi_rounds.png")


if __name__ == '__main__':
    app = "distinctness"#"dsa"
    base_dir ="../vipbench"#"../libsodium"#"../openssl" #"../vipbench"#
    rounds = range(1, 11)  # Rounds 1 through 10

    scatter_plot_with_labels_multi_rounds(app, base_dir, rounds)