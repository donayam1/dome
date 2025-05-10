# import os
# import pandas as pd
# import matplotlib.pyplot as plt
# from sklearn.metrics import adjusted_rand_score, rand_score

# def scatter_plot_with_labels_multi_rounds(app, base_dir, rounds):
#     # Create a figure with 2 rows and 5 columns
#     fig, axes = plt.subplots(2, 5, figsize=(1.43*5, 4))
#     plt.subplots_adjust(hspace=0.3)
#     axes = axes.flatten()  # Flatten for easier indexing

#     for i, round in enumerate(rounds):
#         # Paths for input and output
#         app_data_dir = os.path.join(f"{base_dir}", "data", f"{app}")
#         out_dir = os.path.join(f"{app_data_dir}", f"round{round}")
#         output_file = os.path.join(out_dir, "output_pacmap.csv")
#         input_file = os.path.join(out_dir, "input.csv")

#         # Load the CSV files
#         df1 = pd.read_csv(output_file)
#         df2 = pd.read_csv(input_file)
#         prv_round_label = f'round{int(round)-1}_label'
#         curr_round_label = f'round{int(round)}_label'

#         # Ensure necessary columns exist
#         if 'filename' not in df1.columns or 'filename' not in df2.columns:
#             print(f"Error in round {round}: Both CSV files must contain a 'filename' column.")
#             continue
#         if prv_round_label not in df2.columns:
#             print(f"Error in round {round}: The input CSV file must contain the column '{prv_round_label}'.")
#             continue
#         if curr_round_label not in df1.columns:
#             print(f"Error in round {round}: The input CSV file must contain the column '{curr_round_label}'.")
#             continue


# #         # Read Rand Index from stat.txt
#         stat_file = os.path.join(out_dir, "stat.txt")
#         if os.path.exists(stat_file):
#             with open(stat_file, "r") as f:
#                 stat_lines = f.readlines()
#                 rand_index_line = next((line for line in stat_lines if line.startswith("Adjusted Rand Index:")), None)
#                 rand_index = float(rand_index_line.split(":")[1].strip()) if rand_index_line else None
#         else:
#             rand_index = None
        
#         # Add the prv_round_label column to df1 using iteration
#         prv_round_label_values = []
#         for _, row in df1.iterrows():
#             filename = row['filename']
#             prv_label = df2.loc[df2['filename'] == filename, prv_round_label]
#             prv_round_label_values.append(prv_label.iloc[0] if not prv_label.empty else -1)
#         # Add the extracted values to df1
#         df1[prv_round_label] = prv_round_label_values
                
#         # Extract x and y columns for the scatter plot
#         x_column = "0"
#         y_column = "1"

#         # Plot the scatter plot in the corresponding subplot
#         scatter = axes[i].scatter(
#             df1[x_column],
#             df1[y_column],
#             c=df1[prv_round_label],
#             cmap='viridis',
#             s=50
#         )
        
#         # axes[i].set_title(f'Round {round}')
#         axes[i].set_title(f"Round {round}: Adjusted Rand Index: {rand_index:.3f}",fontsize=8)
#         axes[i].set_xlabel('PaCMAP Component 1',fontsize=8)
#         axes[i].set_ylabel('PaCMAP Component 2',labelpad=-2,fontsize=8)
    
#     plt.savefig(f"{base_dir}/data/{app}/scatter_plot_multi_rounds.png")
#     plt.close()
#     print(f"Scatter plots for all rounds saved at {base_dir}/scatter_plot_multi_rounds.png")


# if __name__ == '__main__':
#     app = "elgamel"#"dsa"
#     base_dir ="../libgcrypt"#"../libsodium"#"../openssl" #"../vipbench"#
#     rounds = range(1, 11)  # Rounds 1 through 10

#     scatter_plot_with_labels_multi_rounds(app, base_dir, rounds)


# import os
# import pandas as pd
# import matplotlib.pyplot as plt
# from sklearn.metrics import adjusted_rand_score, rand_score

# def scatter_plot_with_labels_multi_rounds(app, base_dir, rounds):
#     """
#     Creates a 2-row x 5-column grid of scatter plots.
#     Each subplot has a short title like 'R1 (ARI=0.45)'.
#     All subplots share x-axis, share y-axis, and the final figure width
#     is ~7.15 inches (~516 pt max).
#     """

#     # 2 rows x 5 cols => 10 subplots total
#     # Use sharex/sharey = True to share all ticks
#     fig, axes = plt.subplots(
#         2, 5,
#         sharex=True,
#         sharey=True,
#         figsize=(7.15, 3.5)  # ~7.15 inches wide, 4 inches tall
#     )

#     # Adjust spacing to prevent overlap
#     plt.subplots_adjust(hspace=0.3, wspace=0.2)

#     # Flatten for indexing (axes[0..9])
#     axes = axes.flatten()

#     for i, round_ in enumerate(rounds):
#         # Define paths
#         app_data_dir = os.path.join(base_dir, "data", app)
#         out_dir = os.path.join(app_data_dir, f"round{round_}")
#         output_file = os.path.join(out_dir, "output_pacmap.csv")
#         input_file  = os.path.join(out_dir, "input.csv")

#         # Load CSV files
#         df1 = pd.read_csv(output_file)
#         df2 = pd.read_csv(input_file)

#         prv_round_label  = f'round{int(round_) - 1}_label'
#         curr_round_label = f'round{int(round_)}_label'

#         # Basic error checking
#         if 'filename' not in df1.columns or 'filename' not in df2.columns:
#             print(f"Error in round {round_}: missing 'filename' column.")
#             continue
#         if prv_round_label not in df2.columns:
#             print(f"Error in round {round_}: missing '{prv_round_label}' column.")
#             continue
#         if curr_round_label not in df1.columns:
#             print(f"Error in round {round_}: missing '{curr_round_label}' column.")
#             continue

#         # Try reading Adjusted Rand Index from stat.txt
#         rand_index = None
#         stat_file = os.path.join(out_dir, "stat.txt")
#         if os.path.exists(stat_file):
#             with open(stat_file, "r") as f:
#                 lines = f.readlines()
#                 ari_line = next((ln for ln in lines if ln.startswith("Adjusted Rand Index:")), None)
#                 if ari_line:
#                     # Keep only 2 decimals
#                     try:
#                         rand_index_raw = float(ari_line.split(":")[1].strip())
#                         rand_index = f"{rand_index_raw:.2f}"
#                     except:
#                         pass

#         # Merge the previous round labels into df1
#         prv_round_label_values = []
#         for _, row in df1.iterrows():
#             filename = row['filename']
#             matching = df2.loc[df2['filename'] == filename, prv_round_label]
#             val = matching.iloc[0] if not matching.empty else -1
#             prv_round_label_values.append(val)
#         df1[prv_round_label] = prv_round_label_values

#         # Subplot index
#         ax = axes[i]

#         # Scatter plot
#         ax.scatter(
#             df1["0"],  # X
#             df1["1"],  # Y
#             c=df1[prv_round_label],
#             cmap='viridis',
#             s=50
#         )

#         # Short title: "R1 (ARI=0.45)" if available, else "R1"
#         short_title = f"R{round_}"
#         if rand_index is not None:
#             short_title += f" (ARI={rand_index})"
#         ax.set_title(short_title, fontsize=8)

#     # One shared X label and Y label for the entire figure:
#     fig.text(0.5, 0.04, "PaCMAP Component 1", ha='center', va='center', fontsize=8)
#     fig.text(0.04, 0.5, "PaCMAP Component 2", ha='center', va='center',
#              rotation='vertical', fontsize=8)

#     # Save figure
#     out_path = os.path.join(base_dir, "data", app, "scatter_plot_multi_rounds.png")
#     plt.savefig(out_path,dpi=300, bbox_inches="tight")
#     plt.close()

#     print(f"Scatter plots for all rounds saved to {out_path}")

# if __name__ == '__main__':
#     app = "rsa"
#     base_dir = "../libgcrypt"
#     rounds = range(1, 11)  # Rounds 1..10
#     scatter_plot_with_labels_multi_rounds(app, base_dir, rounds)


import os
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.metrics import adjusted_rand_score, rand_score

def scatter_plot_with_labels_multi_rounds(app, base_dir, rounds):
    """
    2-row x 5-column scatter plot grid, with a golden-ratio figure size.
    The figure width is ~7.15 inches (within 516 pt limit),
    and the height is ~4.42 inches => width/height ≈ 1.618.
    X-label is pushed lower, Y-label is moved closer to subplots.
    """

    # Golden ratio figure dimensions: ~7.15 in wide, ~4.42 in tall
    fig_width = 5.5 #7.15
    golden_ratio = 1.618
    fig_height = fig_width / golden_ratio  # ~4.42 in

    fig, axes = plt.subplots(
        2, 5,
        sharex=True,
        sharey=True,
        figsize=(fig_width, 2.5)
    )

    # Adjust subplot spacing
    plt.subplots_adjust(hspace=0.3, wspace=0.2)

    axes = axes.flatten()  # Flatten for easier indexing

    for i, round_ in enumerate(rounds):
        # Paths
        app_data_dir = os.path.join(base_dir, "data", app)
        out_dir = os.path.join(app_data_dir, f"round{round_}")
        output_file = os.path.join(out_dir, "output_pacmap.csv")
        input_file = os.path.join(out_dir, "input.csv")

        # Load data
        df1 = pd.read_csv(output_file)
        df2 = pd.read_csv(input_file)

        prv_round_label  = f'round{int(round_) - 1}_label'
        curr_round_label = f'round{int(round_)}_label'

        # Error checks
        if 'filename' not in df1.columns or 'filename' not in df2.columns:
            print(f"Error in round {round_}: missing 'filename' column.")
            continue
        if prv_round_label not in df2.columns:
            print(f"Error in round {round_}: missing '{prv_round_label}'.")
            continue
        if curr_round_label not in df1.columns:
            print(f"Error in round {round_}: missing '{curr_round_label}'.")
            continue

        # Attempt to read Adjusted Rand Index from stat.txt
        rand_index = None
        stat_file = os.path.join(out_dir, "stat.txt")
        if os.path.exists(stat_file):
            with open(stat_file, "r") as f:
                lines = f.readlines()
                ari_line = next((ln for ln in lines if ln.startswith("Adjusted Rand Index:")), None)
                if ari_line:
                    try:
                        raw_val = float(ari_line.split(":")[1].strip())
                        rand_index = f"{raw_val:.2f}"  # keep 2 decimals
                    except:
                        pass

        # Merge the previous round label into df1
        prv_values = []
        for _, row in df1.iterrows():
            fn = row['filename']
            match = df2.loc[df2['filename'] == fn, prv_round_label]
            val = match.iloc[0] if not match.empty else -1
            prv_values.append(val)
        df1[prv_round_label] = prv_values

        # Scatter in subplot
        ax = axes[i]
        ax.scatter(
            df1["0"],  # X
            df1["1"],  # Y
            c=df1[prv_round_label],
            cmap='viridis',
            s=50
        )

        # Short subplot title
        short_title = f"R{round_}"
        if rand_index is not None:
            short_title += f" (ARI={rand_index})"
        ax.set_title(short_title, fontsize=8)

    # Move x-axis label a bit lower, y-axis label a bit closer
    # Adjust the y-position for x-label from 0.02 to 0.015 (a bit lower),
    # and x-position for y-label from 0.04 to 0.05 (slightly further in).
    fig.text(0.5, 0.005, "PaCMAP Component 1", ha='center', va='center', fontsize=8)
    fig.text(0.06, 0.5, "PaCMAP Component 2", ha='center', va='center',
             rotation='vertical', fontsize=8)

    out_path = os.path.join(base_dir, "data", app, "scatter_plot_multi_rounds.png")
    plt.savefig(out_path, bbox_inches="tight")
    plt.close()

    print(f"Saved scatter plots for all rounds to: {out_path}")




def scatter_plot_3_apps_side_by_side(apps, base_dir, round_):
    """
    Plots scatter plots for three different 'apps' side by side
    with one shared y-axis label on the left and one shared x-axis
    label at the bottom. Each subplot is about 1.57in x 1.6in in size,
    with a bit of extra space for labels.
    
    :param apps: A list of three app names, e.g. ["aes", "ecdsa", "rsa"]
    :param base_dir: Base directory containing 'data/<app>/round<round>'
    :param round_: The integer round number
    """

    # Figure: 3 subplots side by side
    # Each ~1.57in wide => total ~4.71in, plus some extra for labels => ~5.5 wide
    # Each ~1.6in tall, plus some extra => ~2.1 tall
    fig, axes = plt.subplots(nrows=1, ncols=3, 
                             sharex=True, sharey=True,
                             figsize=(5.5, 2.1))  

    # Keep consistent font settings
    plt.rcParams.update({"font.size": 8})

    # We'll fix xlim/ylim so all subplots have the same range
    x_min, x_max = -25, 25
    y_min, y_max = -25, 25

    for i, app in enumerate(apps):
        # Locate data for this app
        app_data_dir = os.path.join(base_dir, "data", app)
        out_dir = os.path.join(app_data_dir, f"round{round_}")
        output_file = os.path.join(out_dir, "output_pacmap.csv")
        input_file  = os.path.join(out_dir, "input.csv")

        # Load CSV files
        df1 = pd.read_csv(output_file)
        df2 = pd.read_csv(input_file)

        prv_round_label  = f'round{int(round_)-1}_label'
        curr_round_label = f'round{int(round_)}_label'

        # Basic checks
        if 'filename' not in df1.columns or 'filename' not in df2.columns:
            print(f"Error for {app}, round {round_}: missing 'filename' column.")
            continue
        if prv_round_label not in df2.columns:
            print(f"Error for {app}, round {round_}: missing '{prv_round_label}' in input.csv.")
            continue
        if curr_round_label not in df1.columns:
            print(f"Error for {app}, round {round_}: missing '{curr_round_label}' in output_pacmap.csv.")
            continue

        # Add prv_round_label to df1
        prv_vals = []
        for _, row in df1.iterrows():
            fn = row['filename']
            match = df2.loc[df2['filename'] == fn, prv_round_label]
            prv_label = match.iloc[0] if not match.empty else -1
            prv_vals.append(prv_label)
        df1[prv_round_label] = prv_vals

        # Prepare scatter
        ax = axes[i]
        scatter = ax.scatter(
            df1["0"],
            df1["1"],
            c=df1[prv_round_label],
            cmap='viridis',
            s=5
        )
        ax.set_xlim(x_min, x_max)
        ax.set_ylim(y_min, y_max)

        # Optionally compute Rand/ARI for stats
        r1_labels = df1[prv_round_label].fillna(-1).astype(int)
        curr_labels = df1[curr_round_label].fillna(-1).astype(int)
        try:
            rand_idx = rand_score(r1_labels, curr_labels)
            ari_idx  = adjusted_rand_score(r1_labels, curr_labels)
            # Print or store if needed
            print(f"App={app}, Round={round_}, Rand={rand_idx:.3f}, ARI={ari_idx:.3f}")
        except Exception as e:
            print(f"Error computing Rand/ARI for {app}, round {round_}: {e}")

        # (Optional) Save stats to a file
        stat_file = os.path.join(out_dir, "stat.txt")
        with open(stat_file, 'a') as f:
            f.write(f"Rand Index: {rand_idx:.3f}\n")
            f.write(f"Adjusted Rand Index: {ari_idx:.3f}\n")

        # Label each subplot below or above if desired
        # E.g.: ax.set_title(f"{app.upper()} (ARI={ari_idx:.2f})", fontsize=8)

    # Add one shared X label below and one Y label on the left
    fig.text(0.5, 0.02, "PaCMAP Component 1", ha='center', va='center', fontsize=8)
    fig.text(0.08, 0.5, "PaCMAP Component 2", ha='center', va='center',
             rotation='vertical', fontsize=8)

    # Adjust layout so labels are visible, no overlap
    plt.tight_layout(rect=[0.07, 0.05, 1, 0.95])  
    # rect=... leaves space on the left (0.07) and bottom (0.05) for the labels

    # Save final figure
    out_figure = os.path.join(base_dir, "data", f"three_apps_round{round_}.png")
    plt.savefig(out_figure, dpi=300)
    plt.close()

    print(f"Saved side-by-side scatter plots for {apps} round {round_} at {out_figure}")



if __name__ == '__main__':
    app = "rsa"
    base_dir = "../openssl"
    rounds = range(1, 11)  # Rounds 1..10
    # scatter_plot_with_labels_multi_rounds(app, base_dir, rounds)
    apps=["aes","ecdsa",'rsa']
    scatter_plot_3_apps_side_by_side(apps, base_dir, 10)