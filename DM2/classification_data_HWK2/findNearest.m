function [ C ] = findNearest( X , mu )
%Find Nearest neighbores of X
n = size(X,1) ; 
C = zeros(n,1); 
    for i = 1:n
        [~,I] = min( sum((X(i,:) - mu).^2 , 2)) ; 
        C(i) = I(1) ; 
    end
end

