function  plotEllipsoids( X,mu,sigma , Q )
%PLOTELLIPSOIDS plots the ellipsoids of the gaussian mixture and the
% latent variables for all data points

[~,I] = max(Q,[],2) ; 
plotClusterPoints( X,I,mu ) ; 
hold on; 
plot_gaussian_ellipsoid(mu(1,:), sigma{1},2);
plot_gaussian_ellipsoid(mu(2,:), sigma{2},2);
plot_gaussian_ellipsoid(mu(3,:), sigma{3},2);
plot_gaussian_ellipsoid(mu(4,:), sigma{4},2);

title('Gaussian Mixture','LineWidth',2);
end

