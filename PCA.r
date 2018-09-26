iris_dataset=iris[1:4]

iris_pca=princomp(iris_dataset)
summary(iris_pca)

#Plotting
screeplot(iris_pca)
screeplot(iris_pca,type="lines")
biplot(iris_pca)

#Printing loadings and scores
iris_pca$loadings
iris_pca$scores

#Finding eigen data
covariance_matrix=cov(iris_dataset)
covariance_matrix
eigen_data=eigen(covariance_matrix)
#Comparing values:
eigen_data$values
#Components calculated by PCA
iris_pca$sdev^2

#Comparing eigen vectors
eigen_data$vectors
iris_pca$loadings[,1:4]