function [ P ] = updatePi( Q )
%UPDATEPI update the value of the vector pi 
    
    P = sum(Q,1) ./ sum(sum(Q)) ; 
    
    P = P';

end

