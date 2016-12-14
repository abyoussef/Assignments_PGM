function [ mu ] = updateMu( X ,  Q )
%UPDATEMU update the centroids 
    
    K = size(Q,2); 
    d = size(X,2); 
    mu = zeros(K,d); 
    for k = 1 : K
        mu(k,:) = sum( X .* Q(:,k)) ./ sum( Q(:,k) )  ; 
    end
    
    

end

