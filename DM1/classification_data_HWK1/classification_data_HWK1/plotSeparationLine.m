function [l] = plotSeparationLine( sigma,mu_1,mu_0, p )
%PLOTSEPARATIONLINE plots the separation line 
    mu = (mu_1 + mu_0) ./ 2.0; 
    dmu = mu_1 - mu_0 ;
    param = inv(sigma) * dmu; 
    const = log((1-p)/p) + mu' * param; 
    x = linspace(-10,10);
    y=1/(param(2)) * ( -param(1) * x + const);
    l=plot(x,y,'Linewidth',2) ;

    
end

