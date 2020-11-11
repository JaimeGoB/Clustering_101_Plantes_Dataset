library(psych) #describe
library(PerformanceAnalytics) #char.Correlations
library(beeswarm) # plot points in boxplot
library(ggplot2)
library(factoextra) # Cluster plot
library(tidyverse)  # data manipulation

####################################################
# 3. Consider the planet data stored in the planet.csv file available on eLearning. 
# These data give values of three features for 101 exoplanets discovered up to October 2002.
# We are interested in clustering the exoplanets on the basis of these features.
# Note that an exoplanet is a planet located outside the solar system. 
# You may read about them at https://en.wikipedia.org/wiki/Exoplanet. 
# The features recorded are — Mass (in Jupiter mass), Period (in Earth days), and Eccentricity.
####################################################

# Reading in dataset
planets <- read.csv('./data/planet.csv')

####################################################
# (a) Perform an exploratory analysis of the data. 
# Be sure to examine the univariate distributions of the variables 
# and their bivariate relationships using appropriate plots and summary statistics.
####################################################

#Checking the datatypes from predictor variables
str(planets)

#Checking Mean, SD of dataset
describe(planets)

# Correlation coefficient (r) - The strength of the relationship.
# p-value - The significance of the relationship. Significance codes 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# Histogram with kernel density estimation and rug plot.
# Scatter plot with fitted line.
chart.Correlation(planets, histogram=TRUE, pch=19)

# Plotting Box plots for all values
par(mfrow=c(1,3))
for (i in 1:length(planets)) {
  boxplot(planets[,i], main=names(planets[i]), type="l", col = "#F8788D")
  #plotting points
  beeswarm(planets[,i], add=T, col = "#00BFD4", pch = 16)
  
}
par(mfrow=c(1,1))

####################################################
# (b) Do you think standardizing the variables before 
# clustering would be a good idea?
####################################################

####################################################
# (c) Would you use metric-based or correlation-based distance
# to cluster the exoplanets?
####################################################

####################################################
# (d) Regardless of your answers in (b) and (c), 
# standardize the variables and 
# hierarchically cluster  the exoplanets using complete linkage and Euclidean distance. 
# Display the results using a dendogram. 
# Cut the dendogram at a height that results in three distinct clusters. 
# Summarize the cluster-specific means of the three variables (on the original scale) 
# in a tabular form. 
# Also, make pairwise scatterplots of the three variables (on the original scale) 
# and show the three clusters in different colors.
####################################################

# Scaling variables
planets_scaled <- scale(planets)

# hierarchically cluster the exoplanets using complete linkage and Euclidean distance
hc.complete <- hclust(dist(planets_scaled,method = "euclidean",) , method = "complete" )

# Display the results using a dendogram.
plot(hc.complete, main = "Complete Linkage Dendogram", xlab = "", sub = "", cex = 0.5)

# Cut the dendogram at a height that results in three distinct clusters.
clusters_hierarchical <- cutree(hc.complete, 3)

# View Grouping the counts of each each cluster
table(clusters_hierarchical)

#viewing a dendgogram divided into 3 clusters
rect.hclust(hc.complete, k = 3, border = 2:5)

#Observations are represented by points in the plot,
#using principal components if ncol(data) > 2. 
#An ellipse is drawn around each cluster.
fviz_cluster(list(data = planets_scaled, cluster = clusters_hierarchical), main = "Hierarchical Clustering Plot - 3 Clusters")

# Summarize the cluster-specific means of the three variables (on the original scale) in a tabular form.
cluster1_mean <- apply( planets[which(clusters_hierarchical == 1), ] , 2, mean)
cluster2_mean <- apply( planets[which(clusters_hierarchical == 2), ] , 2, mean)
cluster3_mean <- apply( planets[which(clusters_hierarchical == 3), ] , 2, mean)

all_hierarchical_cluster_means <- cbind(cluster1_mean, cluster2_mean, cluster3_mean)

# Make pairwise scatterplots of the three variables (on the original scale) 
# and show the three clusters in different colors.
with(planets, pairs(planets, col=c(1:3)[clusters_hierarchical])) 

####################################################
# (e) Repeat (d) using K-means clustering with K = 3. (Of course, you won’t have a dendogram in this case.) 
# Compare the conclusions with (d).
####################################################

# Cluster the exoplanets using K-means clustering with K = 3
set.seed(5)
km.out <- kmeans(planets, 3, nstart = 20)

# Display the results 
clusters_kmeans <- km.out$cluster
#Observations are represented by points in the plot,
#using principal components if ncol(data) > 2. 
#An ellipse is drawn around each cluster.
fviz_cluster(list(data = planets_scaled, cluster = clusters_kmeans), main = "K-Means Cluster Plot")

# View Grouping the counts of each each cluster
table(clusters_kmeans)

# Summarize the cluster-specific means of the three variables (on the original scale) in a tabular form.
cluster1_mean <- apply( planets[which(clusters_kmeans == 1), ] , 2, mean)
cluster2_mean <- apply( planets[which(clusters_kmeans == 2), ] , 2, mean)
cluster3_mean <- apply( planets[which(clusters_kmeans == 3), ] , 2, mean)

all_kmeans_cluster_means <- cbind(cluster1_mean, cluster2_mean, cluster3_mean)

# Make pairwise scatterplots of the three variables (on the original scale) 
# and show the three clusters in different colors.
with(planets, pairs(planets, col=c(1:3)[clusters_kmeans])) 

