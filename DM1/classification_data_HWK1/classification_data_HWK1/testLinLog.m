function [ r ] = testLinLog( x,y,w )
%UNTITLED19 Summary of this function goes here
%   Detailed explanation goes here
    X = [ ones(size(x,1),1) , x]; 
    r = (sum( (X * w > 0) & (y==0) ) +sum( (X * w < 0) & (y==1) ) ) / size(x,1) ;
    
end

