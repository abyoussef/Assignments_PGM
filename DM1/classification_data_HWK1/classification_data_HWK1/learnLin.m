function [ w ] = learnLin( x,y )
%UNTITLED16 Summary of this function goes here
%   Detailed explanation goes here
    
    X = dataPrepro(x); 
    X = [ones(size(x,1),1) , X]; 
    
    w = inv( X' * X ) * X' * y ;

end

