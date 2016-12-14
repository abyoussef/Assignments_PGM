function [ r ] = testLDA( x, y,sigma,mu_1,mu_0, p )
%UNTITLED18 Summary of this function goes here
%   Detailed explanation goes here
    mu = (mu_1 + mu_0) ./ 2.0; 
    dmu = mu_1 - mu_0 ;
    param = inv(sigma) * dmu; 
    const = log((1-p)/p) ; 
    
    h = ( x - mu') * inv(sigma) * dmu;
    
    r = (sum((h>const)&(y==0)) + sum((h < const)&(y==1)) )/ size(x,1) ;
end

