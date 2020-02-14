n= num;

figure(4); clf;
subplot(1,3,1)
imagesc(xline, yline, Bcart(:,:,1)); polarmap
xlabel 'X'; ylabel 'Y'; title 'Xcomponent - Caciagli'; colorbar

subplot(1,3,2)
imagesc(xline, yline, Bcart(:,:,2)); polarmap
xlabel 'X'; ylabel 'Y'; title 'Ycomponent'; colorbar

subplot(1,3,3)
imagesc(xline, yline, Bcart(:,:,3)); polarmap
xlabel 'X'; ylabel 'Y'; title 'Zcomponent'; colorbar


figure(5); clf;
subplot(1,3,1)
imagesc(xline, yline, Bobj.BXx(:,:,n)'); polarmap
xlabel 'X'; ylabel 'Y'; title 'Xcomponent - Mumax'; colorbar

subplot(1,3,2)
imagesc(xline, yline, Bobj.BXy(:,:,n)'); polarmap
xlabel 'X'; ylabel 'Y'; title 'Ycomponent'; colorbar

subplot(1,3,3)
imagesc(xline, yline, Bobj.BXz(:,:,n)'); polarmap
xlabel 'X'; ylabel 'Y'; title 'Zcomponent'; colorbar


figure(6); clf;
subplot(1,2,1)
quiver(X,Y, Bcart(:,:,1),Bcart(:,:,2))
xlabel 'X'; ylabel 'Y'; title 'Caciagli'; colorbar
subplot(1,2,2)
quiver(X,Y, Bobj.BXx(:,:,n)', Bobj.BXy(:,:,n)')
xlabel 'X'; ylabel 'Y'; title 'Mumax'; colorbar




figure(7); clf;
subplot(1,3,1)
imagesc(xline, yline, BAkoun(:,:,1)); polarmap
xlabel 'X'; ylabel 'Y'; title 'Xcomponent - Akoun'; colorbar

subplot(1,3,2)
imagesc(xline, yline, BAkoun(:,:,2)); polarmap
xlabel 'X'; ylabel 'Y'; title 'Ycomponent'; colorbar

subplot(1,3,3)
imagesc(xline, yline, BAkoun(:,:,3)); polarmap
xlabel 'X'; ylabel 'Y'; title 'Zcomponent'; colorbar



figure(15); clf;
subplot(1,3,1)
imagesc(xline, yline, Coord_polar(:,:,1)); polarmap
xlabel 'X'; ylabel 'Y'; title 'rho - Caciagli'; colorbar

subplot(1,3,2)
imagesc(xline, yline, Coord_polar(:,:,2)) ; polarmap
xlabel 'X'; ylabel 'Y'; title 'phi'; colorbar

subplot(1,3,3)
imagesc(xline, yline, Coord_polar(:,:,3)); polarmap
xlabel 'X'; ylabel 'Y'; title 'z'; colorbar


diffx = Bcart(:,:,1)./Bobj.BXx(:,:,n)' ;
diffy = Bcart(:,:,2)./Bobj.BXy(:,:,n)' ;
diffz = Bcart(:,:,3)./Bobj.BXz(:,:,n)' ;

diffx1 = Bcart(:,:,1)./BAkoun(:,:,1);
diffy1 = Bcart(:,:,2)./BAkoun(:,:,2);
diffz1 = Bcart(:,:,3)./BAkoun(:,:,3);

figure(21); clf; 
subplot(1,3,1)
imagesc(xline, yline, diffx); 
xlabel 'X'; ylabel 'Y'; title '\Deltax - new/mumax'; colorbar
subplot(1,3,2)
imagesc(xline, yline, diffy); 
xlabel 'X'; ylabel 'Y'; title '\Deltay new/mumax'; colorbar
subplot(1,3,3)
imagesc(xline, yline, diffz); 
xlabel 'X'; ylabel 'Y'; title '\Deltaz new/mumax'; colorbar

figure(22); clf; 
subplot(1,3,1)
imagesc(xline, yline, diffx1); 
xlabel 'X'; ylabel 'Y'; title '\Deltax - new/Akoun'; colorbar
subplot(1,3,2)
imagesc(xline, yline, diffy1); 
xlabel 'X'; ylabel 'Y'; title '\Deltay new/Akoun'; colorbar
subplot(1,3,3)
imagesc(xline, yline, diffz1); 
xlabel 'X'; ylabel 'Y'; title '\Deltaz new/Akoun'; colorbar


figure(23); clf; 
subplot(1,3,1)
imagesc(xline, yline, diffx); 
xlabel 'X'; ylabel 'Y'; title '\Deltax - new/mumax'; colorbar
caxis([0.95,1.05])
subplot(1,3,2)
imagesc(xline, yline, diffy); 
xlabel 'X'; ylabel 'Y'; title '\Deltay new/mumax'; colorbar
subplot(1,3,3)
imagesc(xline, yline, diffz); 
xlabel 'X'; ylabel 'Y'; title '\Deltaz new/mumax'; colorbar

figure(24); clf; 
subplot(1,3,1)
imagesc(xline, yline, diffx1); 
xlabel 'X'; ylabel 'Y'; title '\Deltax - new/Akoun'; colorbar
caxis([0.95,1.05])
subplot(1,3,2)
imagesc(xline, yline, diffy1); 
xlabel 'X'; ylabel 'Y'; title '\Deltay new/Akoun'; colorbar
subplot(1,3,3)
imagesc(xline, yline, diffz1); 
xlabel 'X'; ylabel 'Y'; title '\Deltaz new/Akoun'; colorbar