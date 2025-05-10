import os
import numpy as np
import pandas as pd
from sklearn.cluster import KMeans
from sklearn.metrics import adjusted_rand_score, roc_curve, auc
from sklearn.datasets import make_blobs
import matplotlib.pyplot as plt

# Generate synthetic data for vulnerable and non-vulnerable scenarios

def generate_data(vulnerable=True, n_samples=300, random_state=None):
    np.random.seed(random_state)
    if vulnerable:
        # Vulnerable: Two clusters with overlapping points to add noise
        data, labels = make_blobs(n_samples=n_samples, centers=[[0, 0], [5, 5]], cluster_std=0.8, random_state=random_state)
        flip_indices = np.random.choice(n_samples, int(0.04 * n_samples), replace=False)  # Flip 10% of labels
        labels[flip_indices] = 1 - labels[flip_indices]
    else:
        # Non-vulnerable: Two labels but points mostly belong to a single cluster
        data, labels = make_blobs(n_samples=n_samples, centers=[[0, 0], [0.5, 0.5]], cluster_std=2.0, random_state=random_state)
        flip_indices = np.random.choice(n_samples, int(0.4 * n_samples), replace=False)  # Flip 40% of labels
        labels[flip_indices] = 1 - labels[flip_indices]
    return data, labels

# Simulate ARI values and save plots

def simulate_ari_and_save(n_simulations=100, n_samples=300, save_dir="plots"):
    vulnerable_ari = []
    non_vulnerable_ari = []

    # Create directories for saving plots
    vulnerable_dir = os.path.join(save_dir, "vulnerable")
    non_vulnerable_dir = os.path.join(save_dir, "non_vulnerable")
    os.makedirs(vulnerable_dir, exist_ok=True)
    os.makedirs(non_vulnerable_dir, exist_ok=True)

    for i in range(n_simulations):
        # Vulnerable scenario
        data, true_labels = generate_data(vulnerable=True, n_samples=n_samples, random_state=i)
        kmeans = KMeans(n_clusters=2, random_state=i).fit(data)
        ari = adjusted_rand_score(true_labels, kmeans.labels_)
        vulnerable_ari.append(ari)

        # Save scatter plot for vulnerable data
        plt.scatter(data[:, 0], data[:, 1], c=true_labels, cmap="viridis", s=10)
        plt.savefig(os.path.join(vulnerable_dir, f"vulnerable_plot_{i}.png"))
        plt.close()

        # Non-vulnerable scenario
        data, true_labels = generate_data(vulnerable=False, n_samples=n_samples, random_state=i)
        kmeans = KMeans(n_clusters=2, random_state=i).fit(data)
        ari = adjusted_rand_score(true_labels, kmeans.labels_)
        non_vulnerable_ari.append(ari)

        # Save scatter plot for non-vulnerable data
        plt.scatter(data[:, 0], data[:, 1], c=true_labels, cmap="viridis", s=10)
        plt.savefig(os.path.join(non_vulnerable_dir, f"non_vulnerable_plot_{i}.png"))
        plt.close()

    return vulnerable_ari, non_vulnerable_ari

# Save ARI values to CSV

def save_ari_to_csv(vulnerable_ari, non_vulnerable_ari, output_file="ari_values.csv"):
    df = pd.DataFrame({
        "Vulnerable ARI": vulnerable_ari,
        "Non-Vulnerable ARI": non_vulnerable_ari
    })
    df.to_csv(output_file, index=False)
    print(f"ARI values saved to {output_file}")

# Plot ARI distributions

def plot_ari_distributions(vulnerable_ari, non_vulnerable_ari):
    plt.figure(figsize=(10, 6))
    plt.hist(vulnerable_ari, bins=20, alpha=0.7, label="Vulnerable", color='red')
    plt.hist(non_vulnerable_ari, bins=20, alpha=0.7, label="Non-Vulnerable", color='blue')
    plt.axvline(np.mean(vulnerable_ari), color='red', linestyle='dashed', linewidth=2, label='Vulnerable Mean')
    plt.axvline(np.mean(non_vulnerable_ari), color='blue', linestyle='dashed', linewidth=2, label='Non-Vulnerable Mean')
    plt.title("ARI Distributions for Vulnerable vs. Non-Vulnerable Cases")
    plt.xlabel("Adjusted Rand Index (ARI)")
    plt.ylabel("Frequency")
    plt.legend()
    plt.grid(True)
    plt.show()

# Determine optimal threshold using ROC analysis

def determine_threshold(vulnerable_ari, non_vulnerable_ari):
    labels = [1] * len(vulnerable_ari) + [0] * len(non_vulnerable_ari)
    scores = vulnerable_ari + non_vulnerable_ari

    fpr, tpr, thresholds = roc_curve(labels, scores)
    roc_auc = auc(fpr, tpr)

    # Plot ROC curve
    plt.figure(figsize=(8, 6))
    plt.plot(fpr, tpr, color='darkorange', lw=2, label=f"ROC curve (AUC = {roc_auc:.2f})")
    plt.plot([0, 1], [0, 1], color='navy', lw=2, linestyle='--')
    plt.xlabel("False Positive Rate")
    plt.ylabel("True Positive Rate")
    plt.title("ROC Curve")
    plt.legend(loc="lower right")
    plt.grid(True)
    plt.show()

    # Find optimal threshold (Youden's J statistic)
    youden_index = tpr - fpr
    optimal_idx = np.argmax(youden_index)
    optimal_threshold = thresholds[optimal_idx]

    print(f"Optimal ARI Threshold: {optimal_threshold:.3f}")
    return optimal_threshold

# Main simulation and analysis

if __name__ == "__main__":
    n_simulations = 100
    n_samples = 300

    # Simulate ARI values and save plots
    vulnerable_ari, non_vulnerable_ari = simulate_ari_and_save(n_simulations=n_simulations, n_samples=n_samples)

    # Save ARI values to CSV
    save_ari_to_csv(vulnerable_ari, non_vulnerable_ari)

    # Plot ARI distributions
    plot_ari_distributions(vulnerable_ari, non_vulnerable_ari)

    # Determine and print the optimal threshold
    threshold = determine_threshold(vulnerable_ari, non_vulnerable_ari)
