function [ Q ] = updateQ( X, P,mu, sigma )
%UPDATEQ updates the value of Q 
    
    K = size(mu,1); 
    M = size(X,1); 
    Q = zeros(M,K) ; 
    for k = 1:K 
        Q(:,k) = gaussian(X,mu(k,:),sigma{k});  
    end
    Q = Q .* P' ;
    Q = Q ./ sum(Q,2) ; 
    

end

