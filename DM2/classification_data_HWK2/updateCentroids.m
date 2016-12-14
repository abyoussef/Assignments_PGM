function [ mu ] = updateCentroids( X,C )
%UPDATECENTROIDS update the centroids 

n = numel(unique(C)) ; 
mu = zeros(n,size(X,2)); 
for i = 1:n
    mu(i,:) = mean(X(C==i,:)); 
end

end

