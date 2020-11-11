# Unsupervised Learning - Hierarchical and KMeans Clustering

## The dataset
These data give values of three features for 101 exoplanets discovered up to October 2002. We are interested in clustering the exoplanets on the basis of these features. Note that an exoplanet is a planet located outside the solar system. You may read about them at https://en.wikipedia.org/wiki/Exoplanet. The features recorded are — Mass (in Jupiter mass), Period (in Earth days), and Eccentricity.

## Exploratory Data Analysis

### Statistics

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/stats.png" length = 1000 width="600"/>

It is evident to see that normalization of datset is needed. 

### Correlation Matrix, Heat Maps and Histograms

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/correlations.png" length = 1000 width="600"/>

All three predictors are right skewed. 

### Box Plots

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/boxplots.png" length = 1000 width="600"/>

# Hierarchical Clustering

### Dendogram

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/dendogram.png" length = 1000 width="600"/>

### Dendogram - Split 3 Clusters

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/dendogram_split.png" length = 1000 width="600"/>

### Means of Predictors Hierarchical Clustering

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/hmeans.png" length = 1000 width="600"/>

Since cluster 3 there is only observations the means will be the values for observation 74.

#### Observations in 3 Different Clusters
clusters_hierarchical
| 1 | 2 | 3|
--- | ---| ---|
38 | 62 | 1 

Most observations are in cluster 2 followed by 1 and cluster 3 only has one observation.

#### Visualizing 3 Different Clusters

Using first two principle components we can see the plot for first and second principle components.

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/hplot.png" length = 1000 width="600"/>

#### Pair wise plots with Clusters

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/hplots.png" length = 1000 width="600"/>


# K-Means Clustering

### Means of Predictors Hierarchical Clustering

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/kmeans.png" length = 1000 width="600"/>

Since clustering 3 does not have only one observation the means will change because there are 8 other observations in this cluster.

#### Observations in 3 Different Clusters
clusters_hierarchical
| 1 | 2 | 3|
--- | ---| ---|
24 | 68 | 9

There are more 8 observations in cluster 3 in K-Means using K = 3, compared to hierarchical that has only one observation.

#### Visualizing 3 Different Clusters

Using first two principle components we can see the plot for first and second principle components.

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/kplot.png" length = 1000 width="600"/>

#### Pair wise plots with Clusters

<img src="https://github.com/JaimeGoB/Clustering_101_Plantes_Dataset/blob/main/data/kplots.png" length = 1000 width="600"/>


