function [beta] = Beta(z, l, rho, R, pm)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

[zeta] = Zeta(z,l,pm);
[alpha] = Alpha(z, l, rho, R, pm);

beta = zeta*alpha;

end

