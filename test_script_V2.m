xline = linspace(-5, 5,51);
yline = linspace(-5, 5,51);
[X,Y] = meshgrid(xline, yline);

mu0 = 4*pi*1e-7;

l = 1; R = 1; M = 1;

Bpolar = zeros(size(X,1),size(X,2),3,3); Bcart = Bpolar; BAkoun = Bpolar;
Coord_polar = Bpolar; 

tic

for xcount = 1:size(xline,2)
    
    for ycount = 1:size(yline,2)
    
    x = X(xcount,ycount); y = Y(xcount,ycount); z = 0;
    
    [Hrho] = Hrho(M, x, y, z,l, R);
    [Hphi] = Hphi(M, x, y, z,l, R);
    [Hz] = Hz(M, x, y, z,l, R);
    
    [HxAkoun, HyAkoun, HzAkoun] = Jannsen(x,y,z,[2*l,2*l,2*l]);
    
    [Coord_polar(xcount,ycount,2),Coord_polar(xcount,ycount,1),Coord_polar(xcount,ycount,3)] = cart2pol(x,y,z);
    
    Bpolar(xcount,ycount,1) = mu0*Hrho; Bpolar(xcount,ycount,2) = mu0*Hphi; Bpolar(xcount,ycount,3) = mu0*Hz; 
    [Bcart(xcount,ycount,1),Bcart(xcount,ycount,2),Bcart(xcount,ycount,3)] = Vec_feild_cyl_conv(Bpolar(xcount,ycount,1), Bpolar(xcount,ycount,2), Bpolar(xcount,ycount,3), Coord_polar(xcount,ycount,2));
    
    %[Bcart(xcount,ycount,1),Bcart(xcount,ycount,2),Bcart(xcount,ycount,3)] = pol2cart(Bpolar(xcount,ycount,2), Bpolar(xcount,ycount,1), Bpolar(xcount,ycount,3));
    BAkoun(xcount,ycount,1) = mu0*HxAkoun; BAkoun(xcount,ycount,2) = mu0*HyAkoun; BAkoun(xcount,ycount,3) = mu0*HzAkoun; 
    
    clear Hrho Hz Hphi HxAkoun HyAkoun HzAkoun
    
    end 
end 

toc