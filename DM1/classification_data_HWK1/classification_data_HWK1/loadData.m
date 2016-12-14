function [ x,y ] = loadData( data )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    X = load(data);
    x = X(:,1:2); 
    y = X(:,3); 
end

