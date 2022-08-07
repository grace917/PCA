# PCA
Principal component analysis is used to reduce the dimensionality of a large dataset while preserving most of its information. It is recommended to standardize the raw data first to reduce bias. PCA can be performed using the covariance matrix of the dataset, the correlation matrix, or the singular value decomposition of the (centered and possibly scaled) data matrix. The examples we present here mainly focus on covariance matrices. Therefore, the three steps involved in PCA are: first, normalize the dataset; second, compute the covariance matrix; third, obtain the eigenvectors (of the covariance matrix), eigenvalues (of the covariance matrix), and corresponding principal components. Note that an m-dimensional dataset corresponds to m eigenvectors, m*m symmetric covariance matrix, and m principal components.
