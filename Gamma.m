function [gamma] = Gamma(rho, R)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here

if rho+R == 0 
    
    gamma = 0;
    
else

    gamma = (rho - R)/(rho+R);
    
end

end

