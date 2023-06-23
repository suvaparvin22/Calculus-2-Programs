%Project Based Calculus II-MATH.182.600
%Group  : 2
%Author : Suva Parvin Srithe
%Topic  : Astroid 

% Remove every variable from the workspace 
clear all;

% Clear the command window
clc;

% Astroid parameters
% a is a scale factor
a = 1; 

% Define the parameter t
% linspace() function is used to generate a vector of evenly spaced values 
% between two specified endpoints. 
% Its general syntax --> linspace(start,stop,n(number of equally spaced
% points to generate between 'start' and 'stop'))
% In this program linspace generates a vector of evenly spaced values from 
% 0 to 2π (a full circle) with 1000 points.
% This parameter 't' will be used to calculate the x and y coordinates of
% points on the Astroid curve.
t = linspace(0, 2*pi, 1000);


% Calculate the x and y coordinates of the Astroid curve
% These formulas represent the parametric equations of the Astroid curve.
% By raising cos(t) and sin(t) to the power of 3, the curve takes its 
% characteristic shape.
x = a * cos(t).^3;
y = a * sin(t).^3;


% Plot the Astroid curve
% figure function generates a fresh figure window with default property 
% settings. The outcome is the current figure.
% This code creates a new figure using the figure function.
figure;


% The Astroid curve is plotted using the plot function.The variables 'x'
% and 'y' are used as the coordinates,
% and 'b' instructs the computer to plot the curve in blue. The thickness
% of the curve line is set to 2 by the'LineWidth' parameter.
plot(x, y, 'b', 'LineWidth', 2);


% The plot is titled "Astroid Curve" by the title() function.
title('Astroid');


% The xlabel() and ylabel() functions set the labels for the x-axis and
% y-axis, respectively.
xlabel('x --->');
ylabel('y --->');


% Axis equal command ensures that the x- and y-axes have the same scale,
% maintaining the curve's shape.
axis equal;


% The grid on command adds a grid to the plot, making it easier to
% visualize the curve.
grid on;
