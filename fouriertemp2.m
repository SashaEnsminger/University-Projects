% Programmed in MATLAB
% A periodic Fourier series with the bounds (-9,9) when the step function
% is at x=1

numPtX = 1000; % number of points for x
nFourier = 75; % number of Fourier Terms
x = linspace(-9,9,numPtX);

c0 = 2.5875
c1 = zeros(1,nFourier);

f = c0*ones(1,numPtX);


for n=1:nFourier
    c1(n) =  (138*n*pi*sin(n*pi)+138*cos(n*pi)+138*cos(n*pi)-69*n*pi*sin((n*pi)/2)-138*cos((n*pi)/2))/(10*(pi^2)*(n^2)); %Fourier Cosine Coefficients
    fn = c1(n)*cos((n*pi*x)/3); %the Fourier Function of n
    f = f+fn;
end

plot(x,f,'b-','LineWidth',1.5);
hold on
xlabel('$x$','FontSize',16,'FontName','interpreter','latex');  
ylabel('$y$','FontSize',16,'FontName','interpreter','latex'); 
axis on; grid;
