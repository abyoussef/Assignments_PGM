function [ conic ] = conicQDA( sigma_0, sigma_1,mu_0,mu_1, p )
%plotQDALine Summary of this function goes here
    const = 2 * log(p/(1-p));
    q_0 = quadra(sigma_0,mu_0);
    q_1 = quadra(sigma_1,mu_1);
    fconic = @(x,y) q_0(x,y) - q_1(x,y) -const;
    conic = ezplot(fconic);
    set(conic,'Linewidth',2);
end

