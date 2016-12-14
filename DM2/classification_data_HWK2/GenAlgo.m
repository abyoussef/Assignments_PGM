clear all ; 


%% Load Data Points
X  = load('EMGaussian.data'); 
%X  = load('EMGaussian.test'); 
%% Parameters 
iter = 10; % for kMeans
K = 4 ; % Number of clusters
iterGM = 15; % Iteration for EMAlgorithm 
%% 
figure(); 

%% k-Means for clustering the data 
[C,mu,mu_i] = kMeans(X,K,iter); 

%% Plot K-Means
subplot(1,3,1);
plotPoints( X, mu_i);
subplot(1,3,2);
plotClusterPoints( X,C,mu );

% Initialize the matrice Q of the multinomial distribution 
Q = InitQ(C);


%% Gaussian Mixture 

[mu,Sigma,Q ] = EMAlgo(X, Q, iterGM );

subplot(1,3,3); 
plotEllipsoids( X,mu,Sigma , Q ) ;

%% Loglikelihood 
l_gen = logLikelihood( X,Q,mu, Sigma ) ; 

