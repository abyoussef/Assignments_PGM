function [ Q ] = InitQ( C )
%INITQ initialize Q for the first iteration from the result of the
%clustering 

idx = sort(unique(C));

Q = zeros(size(C,1),size(idx,1));

for i = 1:size(C,1)
    Q(i,C(i)) = 1 ; 
end


end

