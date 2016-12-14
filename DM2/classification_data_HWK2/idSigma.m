function [ sigma ] = idSigma( S )
%IDSIGMA Make sigma proportional to identity
    
    K = size(S,2); 
    for k = 1:K
        sigma{k} = 0.5 * trace(S{k}) * eye(2); 
    end
    

end

