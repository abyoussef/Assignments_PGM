function [ sigma ] = updateSigma( X, Q, mu )
%Update Sigma
    
    K = size(Q,2); 
    sigma = {}; 
    for k = 1:K
        m = mu(k,:);
        x = X - m ;
        sigma{k} = x' * (x .* Q(:,k)) ./ sum(Q(:,k)) ; 
    end
end

