function [ l ] = logLikelihood( X,Q,mu, sigma )
%LOGLIKELIHOOD Compute the logLikelihood 

    K = size(mu,1); 
    M = size(X,1); 
    G = zeros(M,K) ; 
    for k = 1:K 
        G(:,k) = gaussian(X,mu(k,:),sigma{k});  
    end
    
    l = sum(sum(G .* Q)) ; 
    
end

