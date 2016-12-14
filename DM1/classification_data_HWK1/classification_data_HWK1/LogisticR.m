%% load the training data and plot it with the separation line from 
% logistic training 
clear; 
clc;
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
hold on; 
title('Logistic regression on set A','FontSize',fs,'FontWeight',fw);
wa = IRLS(x,y,20);
[ mu_0,mu_1,sigma ] = fisherEstimate(x,y); 

plotSeparationline( sigma,mu_1,mu_0, 0.5 );

plotLine(wa);
ra_train = testLinLog(x,y,wa); 

% Set B 
subplot(1,3,2);
[x,y] = loadData('classificationB.train'); 
plotData(x,y);
hold on; 
title('Logistic regression on set B','FontSize',fs,'FontWeight',fw);
wb = IRLS(x,y,20);
[ mu_0,mu_1,sigma ] = fisherEstimate(x,y); 
plotSeparationline( sigma,mu_1,mu_0, 0.5 );
plotLine(wb);
rb_train = testLinLog(x,y,wb); 


% Set C 
subplot(1,3,3);
[x,y] = loadData('classificationC.train');
plotData(x,y);
hold on; 
title('Logistic regression on set C','FontSize',fs,'FontWeight',fw);
wc = IRLS(x,y,40);
[ mu_0,mu_1,sigma ] = fisherEstimate(x,y); 
lda = plotSeparationline( sigma,mu_1,mu_0, 0.5 );
log = plotLine(wc);
rc_train = testLinLog(x,y,wc); 
legend([log,lda],{'Logistic Regression','LDA'});

save logR.mat wa wb wc ra_train rb_train rc_train


%% Testing accuracy on testing data : 
figure ; 
% Set A 
subplot(1,3,1)
[x,y] = loadData('classificationA.test'); 
plotData(x,y);
title('Test on set A','FontSize',fs,'FontWeight',fw);
hold on; 
% Data processing 
ra_test = testLinLog(x,y,wa); 
plotLine(wa);

% Set B
subplot(1,3,2)
[x,y] = loadData('classificationB.test'); 
plotData(x,y);
title('Test on set B','FontSize',fs,'FontWeight',fw);
hold on; 
% Data processing 
rb_test = testLinLog(x,y,wb); 
plotLine(wb);

% Set C
subplot(1,3,3)
[x,y] = loadData('classificationC.test'); 
plotData(x,y);
title('Test on set C','FontSize',fs,'FontWeight',fw);
hold on; 
% Data processing 
rc_test = testLinLog(x,y,wc); 
h = plotLine(wc);

legend(h,'Logistic Regression');

%% Save data 

save logR.mat wa wb wc ra_train rb_train rc_train ra_test rb_test rc_test

clear