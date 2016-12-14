function [ p ] = gaussian(x,mu,sigma )
%GAUSSIAN compute the prob(X = x) with X ~ N(mu,sigma) in 2 dimension
    
    p = 1/(2 * pi * det(sigma)) * exp(-0.5*diag((x - mu)*inv(sigma)*(x-mu)'))


end

