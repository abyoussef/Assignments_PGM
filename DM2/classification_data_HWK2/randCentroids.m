function [ mu , idx ] = randCentroids( X,k )
%randCentroids generate random indexes of k centroids in X 

    idx = randi(size(X,1) , k,1) ; 
    mu = X(idx,:);
end

