function [C , mu, mu_init] = kMeans( X,n ,iter )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

mu_init = randCentroids(X,n); 
mu = mu_init; 
% figure(); 

% subplot(1,2,1);
% scatter(X(:,1) , X(:,2),'.','LineWidth',2); 
% hold on; 
% scatter(mu(:,1),mu(:,2),'rx','LineWidth',2);
% title(sprintf('Training Data and \n Selected Centroids at Random'));

for i =1:iter
    C = findNearest(X,mu); 
    mu = updateCentroids( X,C ); 
    
end

subplot(1,2,2);

% plotPoints(X,C,mu);
% title(sprintf('Clustering in %d iterations',iter));
end

