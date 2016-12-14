function [ h ] = plotLine( w )
%UNTITLED13 Summary of this function goes here
%   Detailed explanation goes here
    x = linspace(-10,10);
    
    y = 1/(w(3)) * ( -w(2) * x - w(1)) ;
    
    h=plot(x,y,'--','Linewidth',2) ;
end

