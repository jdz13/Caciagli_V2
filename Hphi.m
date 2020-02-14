function [Hphi] = Hphi(M, x, y, z,L, R)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

[phi,rho,z] = cart2pol(x,y,z);

if rho == R  
    
    Hphi = 0;
    
elseif abs(z) == L && rho <= R
    
    Hphi = 0;
    
elseif rho == 0
    
    Hphi = 0;
    
else

    Hphi = (M*R*sin(phi)/(pi*rho))*((Beta(z, L, rho, R, 'p')*P3fun(z,L, rho, R, 'p')) - (Beta(z, L, rho, R, 'm')*P3fun(z,L, rho, R, 'm')));
    
end

end

