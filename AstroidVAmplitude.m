%Project Based Calculus II-MATH.182.600
%Group  : 2
%Author : Suva Parvin Srithe
%Topic  : Plotting Astroid with Variable Amplitude


% Remove every variable from the workspace 
clear all;

% Clear the command window
clc;

% Make a vector 't' with a step size of 0.001 that ranges from 0 to 2π.
t=0:0.001:2*pi;

% Create a vector 'a' ranging from 1 to 50 with a step size of 1.
a=1:1:50;

% The plot is titled "Astroid Curve" by the title() function.
title('Plotting Astroid with Variable Amplitude');

% The xlabel() and ylabel() functions set the labels for the x-axis and
% y-axis, respectively.
xlabel('x --->');
ylabel('y --->');


% A for loop is used when the number of iterations is known in advance.
% for loop syntax --> for variable = range  (code to be executed)  end;
% Creates a loop with the line for i=1:10, which means the following .
% block of code will be executed 10 times.
% The trigonometric functions and the current value of 'a' are used inside 
% the loop to determine the x and y coordinates for plotting .
% Trigonometric functions calculate values, exponentiate by 3, and 
% scale with 'a(i)'.
% After calculating the coordinates,the plot() function is used to 
% plot the Astroid.
% Axis equal command ensures that the x- and y-axes have the same scale,
% maintaining the curve's shape.
% The grid on command adds a grid to the plot, making it easier
% to visualize the curve.
% The hold on command is used to preserve existing plots on the figure when
% adding new plots.It allows multiple plots to be displayed on 
% the same figure.
% The pause() function introduces a 1-second pause before executing 
% the next iteration of the loop.
for i=1:10
    x=(a(i)*((cos(t)).^(3)));
    y=(a(i)*((sin(t)).^(3)));
    plot(x,y);
    axis equal;
    grid on;
    hold on;
    pause(1)
    %i=i+1;
end

