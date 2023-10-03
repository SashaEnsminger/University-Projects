%Programmed in MATLAB
%Plots the temperature within an insulated rod

format compact;
length = 15;
temp = 100;
endtemp = 60;
nFourier = 5;
numPtX = 100;
numPtT = 100;
c = 1;

x = linspace(0, length, numPtX);
t = linspace(0, endtemp, numPtT);
[X,T] = meshgrid(x,t);
z = zeros(1, nFourier);
U = zeros(numPtT, numPtX);
U = U+50;
for n=1:nFourier
    z(n) = (2*temp/(n*pi).^2)*(cos(n*pi)-1);
    Un=z(n)*exp(-(n*pi*c/length)^2*T)*cos(n*pi*X/length);
    U=U+Un;
end
set(gca,'FontSize',14);
surf(X,T,U);
shading interp
xlabel('$x$','Fontsize',14,'interpreter','latex'); 
ylabel('$t$','Fontsize',14,'interpreter','latex'); 
zlabel('$u(x,t)$','Fontsize',14,'interpreter','latex');
axis tight; 
view([120 10]);
print -depsc heat_surf.eps
title('Insulated Rod Temperature')