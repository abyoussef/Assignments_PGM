function [ q ] = quadra( sigma,mu )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    q = @(x,y) sigma(1,1) * (x-mu(1)).^2 + sigma(2,2) * (y-mu(2)).^2 +  ...
        2 * (x-mu(1)) .* (y-mu(2)) .* sigma(1,2);

end

