function [Hrho] = Hrho(M, x, y, z,L, R)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

[phi,rho,z] = cart2pol(x,y,z);

if rho == R
    
    Hrho = 0;
    
elseif abs(z) == L && rho <= R
    
    Hrho = 0;
    
elseif rho == 0 && z ~= 0
    
    Hrho = -M/4 * ((Zeta(z,L,'p')/sqrt((Zeta(z,L,'p')^2)+(R^2)))-(Zeta(z,L,'m')/sqrt((Zeta(z,L,'m')^2)+(R^2))));
    
elseif rho == 0 && z == 0 
    
    Hrho = -M/2*(L/sqrt(R^2 + L^2));

else
    
    Hrho = (M*R*cos(phi)/(2*pi*rho))*((Beta(z, L, rho, R, 'p')*P4fun(z,L, rho, R, 'p')) - (Beta(z, L, rho, R, 'm')*P4fun(z,L, rho, R, 'm')));
    
end

end

