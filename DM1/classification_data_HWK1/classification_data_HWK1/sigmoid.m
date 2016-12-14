function [ sig ] = sigmoid( x )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
    sig = 1 ./ (1 + exp(-x));

end

