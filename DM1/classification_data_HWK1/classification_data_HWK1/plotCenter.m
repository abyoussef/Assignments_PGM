function  plotCenter( mu_0,mu_1 )
%UNTITLED20 Summary of this function goes here
%   Detailed explanation goes here
    mu = (mu_1 + mu_0) ./ 2.0; 
    plot(mu(1),mu(2),'kx','Linewidth',2);
    point1 = plot(mu_1(1),mu_1(2),'b^','Linewidth',2);
    point1.MarkerFaceColor = 'b';
    point2 = plot(mu_0(1),mu_0(2),'r^','Linewidth',2);
    point2.MarkerFaceColor = 'r';
    plot([mu_0(1),mu_1(1)],[mu_0(2),mu_1(2)],'k--','Linewidth',2);

end

