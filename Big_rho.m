function [bigrho] = Big_rho(z,l, rho, R, pm)
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here

[gamma] = Gamma(rho, R);

[k] = K(z,l, rho, R, pm);

if gamma^2 == 1 && k^2 == 1
    
    bigrho = pi/2;
    
elseif gamma^2 == 1
    
    g = @(k) (integral(@(x) (1./sqrt(1 - (1-k.^2)*(sin(x).^2))), 0,pi/2));

    bigrho = g(k);

elseif k^2 == 1
    
    g = @(gamma) (integral(@(x) (1./((1 - (1-gamma.^2)*(sin(x).^2)))), 0,pi/2));

    bigrho = g(gamma);
    
else 
    
    g = @(k,gamma) (integral(@(x) (1./((1 - (1-gamma.^2)*(sin(x).^2)).*sqrt(1 - (1-k.^2)*(sin(x).^2)))), 0,pi/2));

    bigrho = g(k, gamma);

end 

end

