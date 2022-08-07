clear, clc, close all

%Create the original dataset
rng(0)
data(:,1) = randn(30,1);
data(:,2) = 5 + 3.6 * data(:,1);
data(:,2) = data(:,2) + 0.6*randn(size(data(:,1)));
data(:,3) = 10 - 1.6 * data(:,2);
data(:,3) = data(:,2) + 1.6*randn(size(data(:,2)));
data(:,4) = 32 - 0.6 * data(:,3);
data(:,4) = data(:,3) + 2.6*randn(size(data(:,3)));
data(:,5) = 12 - 6 * data(:,4);
data(:,5) = data(:,4) + 0.6*randn(size(data(:,4)));
data(:,6) = 2 + 3.6 * data(:,5);
data(:,6) = data(:,5) + 1.6*randn(size(data(:,5)));
data = sortrows(data,1);

%normalized data
data = zscore(data);

%The data can be de-mean using the following two methods:
%method 1:
data = bsxfun(@minus,data,mean(data)); 

%method 2: using for loop
for i=1:6
    data(:,i) = data(:,i)-mean(data(:,i));
end

%PCA step-by-step
%Calculate the covariance matrix, eignevalues (diagonal of D) and eigenvector V
%Principle components = (eigenvector)'*(normalized input data)'
C = cov(data);
[V,D] = eig(C);
Principal_Components = V' * data';
Principal_Components = Principal_Components';

%There are two ways to calculate what percentage of the total variance each PC can explain:
%method 1: eignevalue_i/sum(eignevalue_i)  
%method 2: var(Principal_Component_i)/sum(var(Principal_Component_i))

%PCA using function
[coeff,score,latent,tsquared,explained] = pca(data);
%coeff: eigenvector
%score: Principle components
%latent: each PC can explain % of the total variation
%explained: cumulative percentage

