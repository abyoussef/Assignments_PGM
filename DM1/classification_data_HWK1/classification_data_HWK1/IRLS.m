function [ w] = IRLS( x, y, iter )
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
    w = genWeight(x);
    %resize x 
    X = [ ones(size(x,1),1) , dataPrepro(x)]; 
    %h = [plotLine(w)];
    %s = {'0'};
    for i = 1:iter
         
        eta = sigmoid(X * w);
        D = diag(eta .* (1 - eta));
        
        w = w + inv( X' * D * X) * X' * (y - eta ) ;
        %h = [ h , plotLine(w)];
        %s{1,i+1} = num2str(i) ;
    end
    
    %legend( h , s);
end

