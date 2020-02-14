function [P3] = P3fun(z,l, rho, R, pm)
%UNTITLED17 Summary of this function goes here
%   Detailed explanation goes here

[k] = K(z,l, rho, R, pm);

[kappa, epsillon] = KapEpsil(z,l, rho, R, pm);

[gamma] = Gamma(rho, R);

[bigrho] = Big_rho(z,l, rho, R, pm);

if rho == 0
    
    P3 = 0;
    
elseif k^2 == 1 && gamma^2 == 1
    
    P3 = 0;

elseif k^2 == 1
    
    P3 =  ((gamma^2/(1-gamma^2))*(bigrho-kappa));
    
elseif gamma^2 == 1
    
    P3 = ((1/(1-k^2))*(kappa - epsillon)) ;
    
else

    P3 = ((1/(1-k^2))*(kappa - epsillon)) - ((gamma^2/(1-gamma^2))*(bigrho-kappa));
    
end

end

