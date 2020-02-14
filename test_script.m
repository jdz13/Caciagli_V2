clear
l = 1e-2; R = 1e-2; M = 1e6;
UL = 2e-2;
UV = [UL, 0 0 ; 0,UL, 0; 0,0,UL; UL,UL,0; UL,0,UL; 0, UL, UL; UL,UL,UL];
mu0 = 4*pi*1e-7;

Bpolar = zeros(size(UV,1),3); Bcart = Bpolar; BAkoun = Bpolar; BMumax = Bpolar;
Coord_polar = Bpolar; 

tic

for count = 1:size(UV,1)
    
    x = UV(count,1); y = UV(count,2); z = UV(count,3);
    
    [Hrho] = Hrho(M, x, y, z,l, R);
    [Hphi] = Hphi(M, x, y, z,l, R);
    [Hz] = Hz(M, x, y, z,l, R);
    
    [HxAkoun, HyAkoun, HzAkoun] = Jannsen(x,y,z,[2*l,2*l,2*l]);
    
    [Coord_polar(count,2),Coord_polar(count,1),Coord_polar(count,3)] = cart2pol(x,y,z);
    
    Bpolar(count,1) = mu0*Hrho; Bpolar(count,2) = mu0*Hphi; Bpolar(count,3) = mu0*Hz; 
    [Bcart(count,1),Bcart(count,2),Bcart(count,3)] = Vec_feild_cyl_conv(Bpolar(count,1), Bpolar(count,2), Bpolar(count,3),Coord_polar(count,1));
    BAkoun(count,1) = mu0*HxAkoun; BAkoun(count,2) = mu0*HyAkoun; BAkoun(count,3) = mu0*HzAkoun; 
    
    %BMumax(count,1) = Bobj.BXx(KK(count,1),KK(count,2),KK(count,3));BMumax(count,2) = Bobj.BXy(KK(count,1),KK(count,2),KK(count,3));BMumax(count,3) = Bobj.BXz(KK(count,1),KK(count,2),KK(count,3));
    
    
    clear Hrho Hz Hphi HxAkoun HyAkoun HzAkoun
end 

toc