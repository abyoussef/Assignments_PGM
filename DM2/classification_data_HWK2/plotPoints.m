function plotPoints( X,mu )
%Plot Points with centroids 
    hold on;

    n = size(mu,1) ; 
    scatter(X(:,1) , X(:,2),'b.','LineWidth',2);
    for i = 1 :n 
        scatter(mu(:,1) , mu(:,2),'rx','LineWidth',2);
    end
    title('Initialization','LineWidth',2);
end

