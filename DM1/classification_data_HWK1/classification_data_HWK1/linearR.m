%% load the training data and plot it with the separation line from 
% linear training 
clear; 
close all;
lw=2; %Linewidth
fs=14; %Fontsize
fw='Bold'; %FontWeight
fsa=16; %Fontsize
figure;
hold on; 

% Set A 
subplot(1,3,1)
[x,y] = loadData('classificationA.train'); 
plotData(x,y);
title('Linear regression on set A','FontSize',fs,'FontWeight',fw);
hold on; 
% Data processing 
wa = learnLin(x,y);
ra_train = testLinLog(x,y,wa); 
plotLine(wa);

% Set B
subplot(1,3,2)
[x,y] = loadData('classificationB.train'); 
plotData(x,y);
title('Linear regression on set B','FontSize',fs,'FontWeight',fw);
hold on; 
% Data processing 
wb = learnLin(x,y);
rb_train = testLinLog(x,y,wb); 
plotLine(wb);


% Set C
subplot(1,3,3)
[x,y] = loadData('classificationC.train'); 
plotData(x,y);
title('Linear regression on set C','FontSize',fs,'FontWeight',fw);
hold on; 
% Data processing 
wc = learnLin(x,y);
rc_train = testLinLog(x,y,wc); 
h = plotLine(wc);

legend(h,'Linear Regression');





%% Testing accuracy on testing data : 
figure;
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
title('Test set A','FontSize',fs,'FontWeight',fw);
hold on; 
% Data processing 
rb_test = testLinLog(x,y,wb); 
plotLine(wb);
title('Test on set B','FontSize',fs,'FontWeight',fw);


% Set C
subplot(1,3,3)
[x,y] = loadData('classificationC.test'); 
plotData(x,y);
title('Test on set C','FontSize',fs,'FontWeight',fw);
hold on; 
% Data processing 
rc_test = testLinLog(x,y,wc); 
h = plotLine(wc);
legend(h,'Linear Regression');

%% save data : 
save linR.mat wa wb wc ra_train rb_train rc_train  ra_test rb_test rc_test
clear