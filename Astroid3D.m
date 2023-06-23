%Project Based Calculus II-MATH.182.600
%Group  : 2
%Author : Suva Parvin Srithe
%Topic  : 3-D Astroid revolved about the x-axis


% Remove every variable from the workspace 
clear all;

% Clear the command window
clc;

% Set x-axis and y-axis limits
% Sets the x- and y-axis limits to [-1.5, 1.5] to accommodate the 3-D 
% astroid within the plot.
xlim([-1.5, 1.5]);
ylim([-1.5,1.5]);

% Astroid parameters
%The variable a represents the scale factor of the astroid shape. 
% It determines the overall size of the astroid.
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


% Calculate the x, y, and z coordinates of the Astroid curve
% These formulas represent the parametric equations of the Astroid curve.
% By raising cos(t) and sin(t) to the power of 3, the curve takes
% its characteristic shape.
%z_astroid is being used to represent the z-coordinate values of the
%astroid points. Since the astroid curve lies in a two-dimensional plane
%(x-y plane), the z-coordinate is not relevant. Therefore, setting all
%elements of z_astroid to 1 is a way to indicate that the astroid points
%lie on the same plane.
x_astroid = a * cos(t).^3;
y_astroid = a * sin(t).^3;
z_astroid = ones(size(t));



% The repmat function stands for "repeat matrix" and is used to replicate a
% given matrix or array along specified dimensions. In this case, the goal
% is to create matrices X, Y, and Z with the same size as the t vector,
% which likely represents a parameter vector.
% The numel() function is used to determine the number of elements in an 
% array or matrix. The word "numel" stands for "number of elements.".
% numel() function general syntax --> elements1=numel(A); ,where A is an
% Array or Matrix and elements1 is the number of elements in "A".
% repmat(x_astroid, [numel(t), 1]) repeats the x_astroid vector numel(t)
% times in the row direction (1), creating a matrix with the same number of
% rows as t and the same columns as x_astroid.
X = repmat(x_astroid, [numel(t), 1]);

% repmat(y_astroid, [numel(t), 1]) repeats the y_astroid vector numel(t)
% times in the row direction (1), creating a matrix with the same number of
% rows as t and the same columns as y_astroid
Y = repmat(y_astroid, [numel(t), 1]);

% repmat(z_astroid, [numel(t), 1]) repeats the z_astroid vector numel(t)
% times in the row direction (1), creating a matrix with the same number of
% rows as t and the same columns as z_astroid
Z = repmat(z_astroid, [numel(t), 1]);

%This line of code uses the repmat function to create a matrix T by
%repeating the t vector in the row direction numel(t) times and once in the
%column direction.
%t' is a transpose.The transpose operation swaps the rows and columns of 
% the matrix, effectively 
%reflecting it across its main diagonal.
%Transpose() function general syntax --> A_transpose=A' or
% A_transpose=transpose(A);
T = repmat(t', [1, numel(t)]);


% Apply rotation to the coordinates
%The x-coordinates (X) of the Astroid curve are rotated by this line of
%code by multiplying them element-by-element by the cosine values of the T
%parameter. The rotated x-coordinates of the Astroid curve are represented
%by the result, which is stored in X_rotated.
X_rotated = X .* cos(T);

%Y_rotated = Y;: The y-coordinates (Y) remain unchanged as they are not
%affected by the rotation. The values are copied as is to Y_rotated.
Y_rotated = Y;

%Z_rotated = X.* sin(T) This line rotates the z-coordinates (Z) of the
%Astroid curve by multiplying them element-wise with the sine values of the
%T parameter. The rotation does not alter the Z coordinates' values because
%they were initially set to a constant value of 1. The Astroid curve's
%rotated z-coordinates are stored as the result in Z_rotated.
Z_rotated = X .* sin(T);


% Plot the 3-D Astroid 
% figure function generates a fresh figure window with default property 
% settings.
% The outcome is the current figure.
% This code creates a new figure using the figure function.
figure;


%the surf function is used to create a surface plot of the 
%revolved astroid shape.
%The surf function creates a 3D surface plot of the Astroid shape using the
%rotated coordinates X_rotated, Y_rotated, and Z_rotated as inputs. The
%surface plot's edges are eliminated to give it a smooth appearance using
%the 'EdgeColor', 'none' option.
%surf() function basic syntax --> surf(x,y,z).
surf(X_rotated, Y_rotated, Z_rotated,'EdgeColor','none');

% Axis equal command ensures that the x- and y-axes have the same scale,
% maintaining the curve's shape.
axis manual;

% The grid on command adds a grid to the plot, making it easier to
% visualize the curve.
grid on;

% Set title and labels
title('3-D Astroid revolved about the x-axis ');
xlabel('x --->');
ylabel('y --->');
zlabel('z --->');
