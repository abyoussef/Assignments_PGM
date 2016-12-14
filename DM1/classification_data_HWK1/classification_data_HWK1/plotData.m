function [b,r] = plotData( x,y )
% PLOTDATA plot the point with respect to their class
    index = [y==1];
    b  = plot(x(index,1),x(index,2),'b.');
    
    xlim([min(x(:,1))-0.5 max(x(:,1))+0.5])
    ylim([min(x(:,2))-0.5 max(x(:,2))+0.5])
    
    hold on; 
    r = scatter(x(~index,1),x(~index,2),'r.');
end

