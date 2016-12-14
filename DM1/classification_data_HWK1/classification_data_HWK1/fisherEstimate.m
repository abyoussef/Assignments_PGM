function [ mu_0,mu_1,sigma,sigma_0,sigma_1 ] = fisherEstimate( x,y )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    index = [y==1] ;
    mu_1 = mean(x(index,:))'; 
    mu_0 = mean(x(~index,:))';
    sigma_1 = cov(x(index,1),x(index,2)); 
    sigma_0 = cov(x(~index,1),x(~index,2));
    sigma = (sigma_0 + sigma_1) ./ 2.0; 
end

