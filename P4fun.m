function [P4] = P4fun(z,l, rho, R, pm)
%UNTITLED18 Summary of this function goes here
%   Detailed explanation goes here

[gamma] = Gamma(rho, R);

[bigrho] = Big_rho(z,l, rho, R, pm);

[kappa, ] = KapEpsil(z,l, rho, R, pm);

[P1] = P1fun(z,l, rho, R, pm);

if gamma^2 == 1
    
    P4 = -P1;
    
else

    P4 = ((gamma/(1-gamma^2))*(bigrho-kappa)) + ((gamma/(1-gamma^2))*((gamma^2*bigrho)-kappa))-P1;
    
end

end

