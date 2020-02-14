function [P1] = P1fun(z,l, rho, R, pm)
%UNTITLED15 Summary of this function goes here
%   Detailed explanation goes here

[k] = K(z,l, rho, R, pm);

[kappa, epsillon] = KapEpsil(z,l, rho, R, pm);

if rho == 0 || kappa == epsillon
    
    P1 = kappa;
    
elseif k^2 == 1
    
    P1 = kappa;

else 
    
    P1 = kappa - (((2/(1-k^2))*(kappa - epsillon)));

end
end

