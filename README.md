# Unsupervised Learning - Hierarchical and KMeans Clustering

## The dataset
These data give values of three features for 101 exoplanets discovered up to October 2002. We are interested in clustering the exoplanets on the basis of these features. Note that an exoplanet is a planet located outside the solar system. You may read about them at https://en.wikipedia.org/wiki/Exoplanet. The features recorded are — Mass (in Jupiter mass), Period (in Earth days), and Eccentricity.

## Exploratory Data Analysis

### Statistics

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/stats.png" length = 1000 width="600"/>

It is evident to see that normalization of datset is needed. 

### Correlation Matrix, Heat Maps and Histograms

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/correlations.png" length = 1000 width="600"/>

### Box Plots

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/boxplots.png" length = 1000 width="600"/>

# Hierarchical Clustering

### Dendogram

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/dendogram.png" length = 1000 width="600"/>

### Dendogram - Split 3 Clusters

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/dendogram_split.png" length = 1000 width="600"/>

#### Observations in 3 Different Clusters
clusters_hierarchical
| 1 | 2 | 3|
--- | ---| ---|
38 | 62 | 1 

#### Visualizing 3 Different Clusters

Using first two principle components we can see the plot for first and second principle components.

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/hplot.png" length = 1000 width="600"/>

#### Pair wise plots with Clusters

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/hplots.png" length = 1000 width="600"/>


# K-Means Clustering

#### Observations in 3 Different Clusters
clusters_hierarchical
| 1 | 2 | 3|
--- | ---| ---|
24 | 68 | 9

#### Visualizing 3 Different Clusters

Using first two principle components we can see the plot for first and second principle components.

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/kplot.png" length = 1000 width="600"/>

#### Pair wise plots with Clusters

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/kplots.png" length = 1000 width="600"/>


