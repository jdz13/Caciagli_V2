function [Hz] = Hz(M, x, y, z,L, R)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

[phi,rho,z] = cart2pol(x,y,z);

if rho == R 
    
    Hz = 0;
    
elseif abs(z) == L && rho <= R
    
    Hz = 0;
    
else

    Hz = (M*R*cos(phi)/(pi))*((Alpha(z, L, rho, R, 'p')*P1fun(z,L, rho, R, 'p')) - (Alpha(z, L, rho, R, 'm')*P1fun(z,L, rho, R, 'm')));

end
end

