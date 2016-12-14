function [ r ] = testQDA( x,y,sigma_0, sigma_1,mu_0,mu_1, p )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    h = sum((x - mu_0') * inv(sigma_0) .* (x-mu_0'),2) - ...
        sum((x - mu_1') * inv(sigma_1) .* (x-mu_1'),2)- ...
         2 * log(p/(1-p));
    r = (sum((h>0)&(y==0)) + sum((h < 0)&(y==1)) )/ size(x,1) ;

end

