#One can use either princomp or prcomp to perfrom PCA in R
#princomp uses covariance or correlation matrix to perfrom PCA. This is done for compatibility with the S-PLUS result
#prcomp calculates PCA by a singular value decomposition of the (centered and possibly scaled) data matrix

#scale=FALSE indicates that our data does not need to be standardized. cor=FALSE recommends using covariance matrix. scores=TRUE means results include scores/PCs.
data <- read.csv("data.csv", header = TRUE)
pca<-princomp(data, scale=FALSE, cor=FALSE, scores=TRUE)
pca$loadings
pca$scores

#Alternatively, we can choose to use prcomp to perform PCA
#scale=FALSE indicates that data needs to be standardized
pca<-prcomp(data, scale=TRUE)
