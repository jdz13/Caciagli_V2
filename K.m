function [k] = K(z,l, rho, R, pm)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
[zeta] = Zeta(z,l,pm);

if (zeta^2 +(rho + R)^2) == 0
    
    k = 0;
    
else
    
    k = sqrt((zeta^2 +((rho - R)^2))/(zeta^2 +((rho + R)^2)));
    
end

end

