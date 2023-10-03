%this program will plot a henon attractor.

N = 1000;	%number of iterates

%initialize arrays
x = zeros(1,N);	
y = zeros(1,N);

%assign initial values to x(n) and y(n)

x(1) = 1;
y(1) = 1;

%start loop for interative values of function

for i = 1:N;

	x(i+1) = 1.4 - x(i)*x(i) + 0.3*y(i);
	y(i+1) = x(i);

end %for loop

%plot the function and label axes

plot(x,y,'.b')
title('Henon Plot of x vs y');
xlabel ('x (arbitrary units)');
ylabel ('y (arbitrary units)');
