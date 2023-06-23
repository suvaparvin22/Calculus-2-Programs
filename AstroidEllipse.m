%Project Based Calculus II-MATH.182.600
%Group  : 2
%Author : Suva Parvin Srithe
%Topic  : Astroid serves as the shared envelope for a family of Ellipses

% Remove every variable from the workspace 
clear all;

% Clear the command window
clc;

% Plot the ellipses
% figure function generates a fresh figure window with default property
% settings. The outcome is the current figure. This code creates a new
% figure using the figure function.
% The hold on command is used to preserve existing plots on the figure when
% adding new plots.It allows multiple plots to be displayed on the same 
% figure.
% Axis equal command ensures that the x- and y-axes have the same scale,
% maintaining the curve's shape.
% The grid on command adds a grid to the plot, making it easier to 
% visualize the curve.
%parameters is a matrix containing the parameters for each ellipse.
figure;
hold on;
axis equal;
grid on;
parameters = [
    0.5, 269.5;
    269.5, 0.5;
    269.5, 0.5;
    27, 243;
    27, 243;
    81, 189;
    81, 189;
    135, 135;
    162, 108;
    189, 81;
    216, 54;
    243, 27;
    270, 0
];

% for i = 1:size(parameters, 1)
% A for loop is used when the number of iterations is known in advance.
% for loop syntax --> for variable = range  (code to be executed)  end;
% This is a loop that iterates from i = 1 to the number of rows in the 
% parameters matrix. size(parameters, 1) returns
% the number of rows in the parameters matrix, indicating the number of
% ellipses to plot. The loop variable i represents the current row being
% processed.
for i = 1:size(parameters, 1)

    %rx = parameters(i, 1).This line of code assigns the value of the
    % first column (parameters(i, 1)) in the i-th row of the parameters
    % matrix to the variable rx.rx represents the radius along the x-axis
    % of the current ellipse being plotted.
    rx = parameters(i, 1);

    %ry = parameters(i, 2).This line of code assigns the value of the 
    % second column (parameters(i, 2)) in the i-th row of the parameters 
    % matrix to the variable ry.ry represents the radius along the y-axis 
    % of the current ellipse being plotted.
    ry = parameters(i,2);

    % This code assigns the value 300 to the variable cx.
    cx = 300;

    % This code assigns the value 300 to the variable cx.
    cy = 300;

    %This line on code  creates a vector theta with 100 equally spaced
    %values between 0 and 2*pi.theta represents the angles at which points
    %on the ellipse will be calculated.
    theta = linspace(0, 2*pi, 100);

    %This line computes the x-coordinates of points on the ellipse using
    %the formula rx * cos(theta) + cx.It multiplies each value in theta by
    %rx, takes the cosine of the result, and then adds cx to obtain the
    %final x-coordinate.
    x = rx * cos(theta) + cx;

    %This line computes the y-coordinates of points on the ellipse using
    %the formula ry * sin(theta) + cy.It multiplies each value in theta by
    %ry, takes the sine of the result, and then adds cy to obtain the
    %final y-coordinate.
    y = ry * sin(theta) + cy;
    %the plot() function is used to plot the Ellipse.
    %This line plots the coordinates (x, y) as a black ('k') curve with a
    %linewidth of 1 using the plot function.It displays the current ellipse
    %on the graph with the specified x and y coordinates.
    plot(x, y, 'k', 'LineWidth', 1);
end

% Plot the equation x^(2/3) + y^(2/3) = 1 as an ellipse
%theta_ellipse = linspace(0, 2*pi, 1000); This line creates a vector called
%theta_ellipse with 1000 evenly spaced points and a range of 0 to 2π. It
%displays the angle values used to parameterize the ellipse.
theta_ellipse = linspace(0, 2*pi, 1000);

%The x-coordinates of the points that make up the ellipse are calculated
%using the equation x_ellipse = (cos(theta_ellipse)).(3/2). Applying the
%parametric equation x = cos(theta)(3/2)—where theta_ellipse denotes the
%angles at which the points are plotted.
x_ellipse = (cos(theta_ellipse)).^(3/2);

%The y-coordinates of the points that make up the ellipse are calculated
%using the equation y_ellipse = (sin(theta_ellipse)).(3/2). Applying the
%parametric equation x = sin(theta)(3/2)—where theta_ellipse denotes the
%angles at which the points are plotted.
y_ellipse = (sin(theta_ellipse)).^(3/2);

%the plot() function is used to plot the Ellipse.
%Using the calculated x and y coordinates, this line plots the ellipse. It
%generates a 2D line plot using the plot function. The x and y coordinates
%of the ellipse points are represented, respectively, by the x_ellipse and
%y_ellipse vectors. The 'r' specifies that the plot should be displayed in
%red, and 'LineWidth', 1, sets the line width to 1.
plot(x_ellipse, y_ellipse, 'r', 'LineWidth', 1);

% Set title and labels
title('Astroid serves as the shared envelope for a family of Ellipses');
xlabel('x --->');
ylabel('y --->');




