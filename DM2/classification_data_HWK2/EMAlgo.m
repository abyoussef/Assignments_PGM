function  [mu,Sigma,Q ] = EMAlgo(X, Q, iter )
%EMALGO 
P = updatePi( Q );
for i=1:iter 
    mu = updateMu( X ,  Q ); 
    Sigma = updateSigma( X,Q , mu  ) ;
    Q = updateQ( X, P,mu, Sigma );
    P = updatePi( Q );
end

mu = updateMu( X, Q); 
Sigma = updateSigma( X, Q, mu) ;

end

