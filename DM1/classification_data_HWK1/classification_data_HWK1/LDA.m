%% load the training data and plot it with the separation line from 
% LDA training
clear; 
close all;
lw=2; %Linewidth
fs=14; %Fontsize
fw='Bold'; %FontWeight
fsa=16; %Fontsize
figure;
hold on; 
% Set A  
subplot(1,3,1);
[x,y] = loadData('classificationA.train'); 
plotData(x,y); 
title('LDA on set A','FontSize',fs,'FontWeight',fw);

[ mu_0A,mu_1A,sigmaA ] = fisherEstimate(x,y); 

% plotSeparationLine( sigmaA,mu_1A,mu_0A, 0.5 );
% plotSeparationLine( sigmaA,mu_1A,mu_0A, 0.2 );
% plotSeparationLine( sigmaA,mu_1A,mu_0A, 0.8 );
plotCenter(mu_0A,mu_1A);
plotSeparationLine( sigmaA,mu_1A,mu_0A, 0.5 );
ra_train = testLDA(x, y,sigmaA,mu_1A,mu_0A, 0.5);
% Set B 
subplot(1,3,2);
[x,y] = loadData('classificationB.train'); 
plotData(x,y); 
title('LDA on set B','FontSize',fs,'FontWeight',fw);

[ mu_0B,mu_1B,sigmaB ] = fisherEstimate(x,y); 
% plotSeparationLine( sigmaB,mu_1B,mu_0B, 0.5 );
% plotSeparationLine( sigmaB,mu_1B,mu_0B, 0.2 );
% plotSeparationLine( sigmaB,mu_1B,mu_0B, 0.8 );
plotSeparationLine( sigmaB,mu_1B,mu_0B, 0.5 );
plotCenter(mu_0B,mu_1B);
rb_train = testLDA(x, y,sigmaB,mu_1B,mu_0B, 0.5);

% Set C
subplot(1,3,3);
[x,y] = loadData('classificationC.train'); 
[b,r] = plotData(x,y); 
title('LDA on set C','FontSize',fs,'FontWeight',fw);

[ mu_0C,mu_1C,sigmaC ] = fisherEstimate(x,y); 
% l1 =plotSeparationLine( sigmaC,mu_1C,mu_0C, 0.5 );
% l2 = plotSeparationLine( sigmaC,mu_1C,mu_0C, 0.2 );
% l3 = plotSeparationLine( sigmaC,mu_1C,mu_0C, 0.8 );
plotCenter(mu_0C,mu_1C);
plotSeparationLine( sigmaC,mu_1C,mu_0C, 0.5 );
rc_train = testLDA(x, y,sigmaC,mu_1C,mu_0C, 0.5);

% Construct a Legend with the data from the sub-plots
% hL = legend([b r l1 l2 l3],{'1','0','\pi=0.5','\pi=0.2','\pi=0.8'},'FontWeight',fw,'FontSize',fsa);

%% Testing accuracy on testing data
figure; 

% Set A 
subplot(1,3,1);
[x,y] = loadData('classificationA.test'); 
plotData(x,y); 
title('Test LDA on set A','FontSize',fs,'FontWeight',fw);
plotSeparationLine( sigmaA,mu_1A,mu_0A, 0.5 );
ra_test = testLDA(x, y,sigmaA,mu_1A,mu_0A, 0.5);

% Set B 
subplot(1,3,2);
[x,y] = loadData('classificationB.test'); 
plotData(x,y); 
title('Test LDA on set B','FontSize',fs,'FontWeight',fw);
plotSeparationLine( sigmaB,mu_1B,mu_0B, 0.5 );
rb_test = testLDA(x, y,sigmaB,mu_1B,mu_0B, 0.5);

% Set C
subplot(1,3,3);
[x,y] = loadData('classificationC.test'); 
plotData(x,y); 
title('Test LDA on set C','FontSize',fs,'FontWeight',fw);
plotSeparationLine( sigmaC,mu_1C,mu_0C, 0.5 );
rc_test = testLDA(x, y,sigmaC,mu_1C,mu_0C, 0.5);
%% Save data : 
save lda.mat ra_train rb_train rc_train ra_test rb_test rc_test
save ldaParam.mat mu_0A mu_1A sigmaA mu_0B mu_1B sigmaB mu_0C mu_1C sigmaC
clear;