function [P2] = P2fun(z,l, rho, R, pm)
%UNTITLED16 Summary of this function goes here
%   Detailed explanation goes here

[gamma] = Gamma(rho, R);

[bigrho] = Big_rho(z,l, rho, R, pm);

[kappa,  ] = KapEpsil(z,l, rho, R, pm);  

if rho == 0 || bigrho == kappa
    
    P2 = kappa; % Comes from the limit caveat stuff. Test if wanting to be sure. 
        
elseif gamma^2 == 1
    
    P2 = 0;
    
else
    
    P2 = - (gamma/(1-gamma^2)*(bigrho-kappa)) - ((1/(1-gamma^2))*((gamma^2*bigrho) - kappa));

end

end

