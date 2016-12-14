function plotClusterPoints( X,C,mu )
%Plot Points with centroids 
    hold on;

    n = size(mu,1) ; 
    for i = 1 :n 
        Xc = X(C==i,:); 
        scatter(Xc(:,1) , Xc(:,2),'.','LineWidth',2);
        scatter(mu(:,1) , mu(:,2),'rx','LineWidth',2);
    end
    
    title('k-Means','LineWidth',2);
end

