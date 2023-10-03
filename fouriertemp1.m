% A periodic Fourier series with the bounds (-3,3) when the step function
% is at x=1

numPtX = 1000; % number of points for x
nFourier = 75; % number of Fourier Terms
x = linspace(-3,3,numPtX);


c1 = zeros(1,nFourier);

f = ones(1,numPtX)+0.75;


for n=1:nFourier
    c1(n) = ((8*(cos((pi*(n+1))/3))-cos(n*pi))/(pi*((2*n)-1)));
    fn = c1(n)*cos((pi*((2*n)-1)*x)/6); %the Fourier Function of n
    f = f+fn;
end

plot(x,f,'b-','LineWidth',1.5);
hold on
xlabel('$x$','FontSize',16,'FontName','interpreter','latex');  
ylabel('$y$','FontSize',16,'FontName','interpreter','latex'); 
axis on; grid;
