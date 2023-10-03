%Programmed in MATLAB
%Plots a quadratic function

t = linspace(0,10,200); % x points of evaluation
y = (5/8)*2.9957*exp(1/5.*t);   % quadratic function 

plot(t,y,'b-','LineWidth',1.5);  % plot the quadratic
hold on


grid;      % provide gridlines
h = legend('$y = 5/8*(2.9957)e^(1/5)t$', '$y = \frac{4}{x+2}$',...
    'Location','northeast');
set(h,'Interpreter','latex')
tlim([-10,10]);
ylim([-10,10]);
% Set up fonts and labels for the Graph
fontlabs = 'Times New Roman';  
tlabel('$x$','FontSize',16,'FontName',fontlabs, ...
    'interpreter','latex');  
ylabel('$y$','FontSize',16,'FontName',fontlabs, ...
    'interpreter','latex'); 
mytitle = 'Basic Plot';
title(mytitle,'FontSize',16,'FontName', ...
    'Times New Roman','interpreter','latex'); 
set(gca,'FontSize',16);        
