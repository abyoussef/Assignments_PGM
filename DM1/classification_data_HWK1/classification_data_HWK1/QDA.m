%% load the training data and plot it with the separation line from 
% QDA training
clear; 
close all;
lw=2; %Linewidth
fs=14; %Fontsize
fw='Bold'; %FontWeight
fsa=16; %Fontsize
figure;
hold on; 
%% Set A  
subplot(2,3,1);
[x,y] = loadData('classificationA.train'); 
plotData(x,y); 


[ mu_0A,mu_1A,sigmaA,sigma_0A,sigma_1A ] = fisherEstimate(x,y); 
ra_train = testQDA( x,y,sigma_0A, sigma_1A,mu_0A,mu_1A, 0.5 );
% plotSeparationline( sigmaA,mu_1A,mu_0A, 0.5 );
% plotSeparationline( sigmaA,mu_1A,mu_0A, 0.2 );
% plotSeparationline( sigmaA,mu_1A,mu_0A, 0.8 );
plotCenter(mu_0A,mu_1A);
plotSeparationLine( sigmaA,mu_1A,mu_0A, 0.5 );
conic = conicQDA( sigma_0A, sigma_1A,mu_0A,mu_1A, 0.5 );
title('QDA on set A','FontSize',fs,'FontWeight',fw);
subplot(2,3,4);
[x,y] = loadData('classificationA.test'); 
plotData(x,y); 
ra_test = testQDA( x,y,sigma_0A, sigma_1A,mu_0A,mu_1A, 0.5 );
conic = conicQDA( sigma_0A, sigma_1A,mu_0A,mu_1A, 0.5 );
title('Test QDA on set A','FontSize',fs,'FontWeight',fw);

%% Set B  
subplot(2,3,2);
[x,y] = loadData('classificationB.train'); 
plotData(x,y); 


[ mu_0B,mu_1B,sigmaB,sigma_0B,sigma_1B ] = fisherEstimate(x,y); 

% plotSeparationline( sigmaA,mu_1A,mu_0A, 0.5 );
% plotSeparationline( sigmaA,mu_1A,mu_0A, 0.2 );
% plotSeparationline( sigmaA,mu_1A,mu_0A, 0.8 );
plotCenter(mu_0B,mu_1B);
plotSeparationLine( sigmaB,mu_1B,mu_0B, 0.5 );
conic = conicQDA( sigma_0B, sigma_1B,mu_0B,mu_1B, 0.5 );
rb_train = testQDA( x,y,sigma_0B, sigma_1B,mu_0B,mu_1B, 0.5 );
title('QDA on set A','FontSize',fs,'FontWeight',fw);
subplot(2,3,5);
[x,y] = loadData('classificationB.test'); 
plotData(x,y); 
rb_test = testQDA( x,y,sigma_0B, sigma_1B,mu_0B,mu_1B, 0.5 );
conic = conicQDA( sigma_0B, sigma_1B,mu_0B,mu_1B, 0.5 );
title('Test QDA on set A','FontSize',fs,'FontWeight',fw);

%% Set C  
subplot(2,3,3);
[x,y] = loadData('classificationC.train'); 
plotData(x,y); 


[ mu_0C,mu_1C,sigmaC,sigma_0C,sigma_1C ] = fisherEstimate(x,y); 
rc_train = testQDA( x,y,sigma_0C, sigma_1C,mu_0C,mu_1C, 0.5 );
% plotSeparationline( sigmaA,mu_1A,mu_0A, 0.5 );
% plotSeparationline( sigmaA,mu_1A,mu_0A, 0.2 );
% plotSeparationline( sigmaA,mu_1A,mu_0A, 0.8 );
plotCenter(mu_0C,mu_1C);
h = plotSeparationLine( sigmaC,mu_1C,mu_0C, 0.5 );
conic = conicQDA( sigma_0C, sigma_1C,mu_0C,mu_1C, 0.5 );
legend([h,conic],{'LDA','QDA'});
title('QDA on set A','FontSize',fs,'FontWeight',fw);
subplot(2,3,6);
[x,y] = loadData('classificationC.test'); 
plotData(x,y); 
rc_test = testQDA( x,y,sigma_0C, sigma_1C,mu_0C,mu_1C, 0.5 );
conic = conicQDA( sigma_0C, sigma_1C,mu_0C,mu_1C, 0.5 );
title('Test QDA on set A','FontSize',fs,'FontWeight',fw);
%% save data : 
save qdaParam.mat mu_0A mu_1A sigma_0A sigma_1A ...
    mu_0B mu_1B sigma_0B sigma_1B ...
     mu_0C mu_1C sigma_0C sigma_1C;
save QDA.mat ra_train rb_train rc_train  ra_test rb_test rc_test;
clear;