function [Bx,By,Bzout] = Vec_feild_cyl_conv(Brho,Bphi,Bzin, phi)
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here

Bx = (Brho*cos(phi)) - (Bphi*sin(phi));
By = (Brho*sin(phi)) + (Bphi*cos(phi));
Bzout = Bzin;

end

