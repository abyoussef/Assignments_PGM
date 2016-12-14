function [ X ] = dataPrepro( x )
%dataPrepro Summary of this function goes here
%   Detailed explanation goes here
    X = (x-mean(x))./sqrt(var(x)); 
    
    
end

