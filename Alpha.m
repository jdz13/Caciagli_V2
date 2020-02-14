function [alpha] = Alpha(z, l, rho, R, pm)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[zeta] = Zeta(z,l,pm);

if (zeta^2) + ((rho+R)^2) == 0
    
    alpha = 0;
    
else
    
    alpha = 1/sqrt((zeta^2) + ((rho+R)^2));
    
end

end

