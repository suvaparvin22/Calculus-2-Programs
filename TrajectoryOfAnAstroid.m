%Project Based Calculus II-MATH.182.600
%Group  : 2
%Author : Suva Parvin Srithe
%Topic  : Trajectory of an Astroid

% Remove every variable from the workspace 
clear all;

% Clear the command window
clc;

% Set up the figure
% figure function generates a fresh figure window with default property
% settings. The outcome is the current figure. This code creates a new
% figure using the figure function.
figure;

% Axis equal command ensures that the x- and y-axes have the same scale,
% maintaining the curve's shape.
axis equal;

% The grid on command adds a grid to the plot, making it easier to
% visualize the curve.
grid on;

% The hold on command is used to preserve existing plots on the figure when
% adding new plots.It allows multiple plots to be displayed on the same
% figure.
hold on;

% Set x-axis and y-axis limits
% Sets the x- and y-axis limits to [-1.5, 1.5] to accommodate the circle
% and astroid curve within the plot.
xlim([-1.5, 1.5]);
ylim([-1.5,1.5]);


% Circle parameters
% Center of the circle
center = [0 0]; 
% Radius of the fixed circle
circle_radius = 1; 


% Small circle parameters
% Radius of the small circle
small_circle_radius =0.25; 

% Astroid parameters
% Radius of the astroid curve
astroid_radius = 1; 

% Animation parameters
% Number of animation frames
num_frames = 100; 

% Compute astroid points
%This line creates a string of num_frames values that are evenly spaced and
% range from 0 to 2π (inclusive). It then assigns the string to the
% variable theta. A linearly spaced vector is produced using the linspace
% function. 
% linspace() function is used to generate a vector of evenly
% spaced values between two specified endpoints.
% Its general syntax -->linspace(start,stop,n(number of equally spaced 
% points to generate between 'start' and 'stop')). In this program linspace
% generates a vector of evenly spaced values from 0 to 2π (a full circle) 
% with 100 points.
theta = linspace(0, 2*pi, num_frames);


% This calculation scales the cosine values by the astroid_radius and cubes
% them to obtain the x-component of the astroid curve at various angles
% using the cosine function. The center(1) value, when added, makes sure
% that the x-coordinates are located relative to the desired center point.
x_astroid = center(1) + astroid_radius * (cos(theta).^3);


% This calculation scales the sine values by the astroid_radius and cubes
% them to obtain the y-component of the astroid curve at various angles
% using the sine function. The center(2) value, when added, makes sure that
% the y-coordinates are located relative to the desired center point.
y_astroid = center(2) + astroid_radius * (sin(theta).^3);


% Draw the circle 
%The rectangle() function is used to draw a circle.It takes the parameters: 
% 'Position': Indicates the location of the rectangle by giving its width 
% and height as well as the x and y coordinates of the top-left corner. 
%The circle is positioned by using the center coordinates and circle_radius
% in the form of [center(1)-circle_radius,center(2)-circle_radius,
% 2*circle_radius,2*circle_radius] The width and height of the rectangle 
% are both set to 2*circle_radius, and it is placed so that the center of 
% the rectangle and the center coordinates coincide.
% "Curvature," is set to [1 1] to make the rectangle resemble a circle.
% LineWidth property is used to control the width of lines in plots,figures,
% and graphical objects.It determines the thickness of the lines.
% 'LineWidth': Defines the circle's line width to be 2.
rectangle('Position', [center(1)-circle_radius, center(2)-circle_radius, ...
    2*circle_radius, 2*circle_radius], 'Curvature', [1 1], 'LineWidth', 2);


% Initialize small circle
% Once more using the rectangle() function, a small circle is made that will
% follow the astroid curve. The position is set by center and
% small_circle_radius, and its width and height are both set to
% 2*small_circle_radius. It has the same syntax as drawing a circle.
small_circle = rectangle('Position', [center(1)-small_circle_radius, ...
    center(2)-small_circle_radius, 2*small_circle_radius, ...
    2*small_circle_radius], 'Curvature', [1 1], 'LineWidth', 2);


% Initialize astroid curve points
% By taking the cosine of the angle, cubing the result, scaling it by the
% astroid radius, and then adding the x-coordinate of the center point,
% this line determines the x-coordinate of a point on the astroid curve.
x_curve = center(1) + astroid_radius * (cos(theta(1)).^3);

% By taking the sine of the angle, cubing the result, scaling it by the
% astroid radius, and then adding the y-coordinate of the center point,
% this line determines the y-coordinate of a point on the astroid curve.
y_curve = center(2) + astroid_radius * (sin(theta(1)).^3);


% Initialize curve plot
% the plot() function is used to plot the Astroid.
% Using the specified x and y coordinates, the color red, and a line width 
% of 2, this line of code plots the astroid curve.
curve_plot = plot(x_curve, y_curve, 'r', 'LineWidth', 2);

% Set title and labels
title('Trajectory of an Astroid');
xlabel('x --->');
ylabel('y --->');

% Set axis limits and prevent them from changing
axis manual;

% Animation loop
% A for loop is used when the number of iterations is known in advance.
% for loop syntax --> for variable = range  (code to be executed)  end;
% The animation frames are managed by the for loop, 
% which iterates from frame = 2 to num_frames.
for frame = 2:num_frames

    % Update astroid curve points
    %Based on a subset of angles from the first to the present frame, these
    %lines of code alter the x and y coordinates of the astroid curve
    %points. Applying the astroid curve's parametric equations, which
    %involve the cosine and sine of the angles, cubing the outcomes, and
    %scaling them by the astroid radius, produces the desired results. The
    %final x and y coordinates of the astroid curve points for the current
    %frame are obtained by adding the center coordinates.

    %Frame is frequently used in animation code to regulate how the frames
    %advance. Typically, it begins at the first frame and loops through all
    %subsequent frames, increasing by a constant amount each time. The
    %position, characteristics, or appearance of graphic elements are
    %updated using the value of frame, giving the appearance of motion or
    %dynamic changes over time.
    x_curve = center(1) + astroid_radius * (cos(theta(1:frame)).^3);
    y_curve = center(2) + astroid_radius * (sin(theta(1:frame)).^3);
    

    % Update small circle position
    %The small circle's x-coordinate is determined by the formula
    %small_circle_x = center(1) + x_astroid(frame) - small_circle_radius.
    %We calculate the correct x-coordinate for the position of the small
    %circle with respect to the astroid curve for the current frame by
    %adding the x-coordinate of the center point, the x-coordinate of the
    %corresponding astroid point, and deducting the small circle radius.
    small_circle_x = center(1) + x_astroid(frame) - small_circle_radius;

    %The small circle's Y-coordinate is determined by the formula
    %small_circle_Y = center(2) + Y_astroid(frame) - small_circle_radius.
    %We calculate the correct Y-coordinate for the position of the small
    %circle with respect to the astroid curve for the current frame by
    %adding the Y-coordinate of the center point,the Y-coordinate of the
    %corresponding astroid point, and deducting the small circle radius.
    small_circle_y = center(2) + y_astroid(frame) - small_circle_radius;

    %The position and size of the small circle object in the animation 
    % are updated by the code set(small_circle, 'Position', 
    % [small_circle_x,small_circle_y, 2*small_circle_radius, 
    % 2*small_circle_radius]).The new position and size of the small 
    % circle are set using the calculated x and y coordinates 
    % (small_circle_x and small_circle_y) as well as the
    %specified width and height (twice the small circle radius).
    %The set() function enables us to change several properties of an
    %object with just one function call. As many property-value pairs as
    %required may be entered, separated by commas.
    %set() function syntax ---> set(handle, 'PropertyName1',
    %PropertyValue1,
    % 'PropertyName2', PropertyValue2, ...);
    set(small_circle, 'Position', ([small_circle_x, small_circle_y, ...
        2*small_circle_radius, 2*small_circle_radius]));
    

    % Update curve plot
    %The function set(curve_plot, 'XData', x_curve, 'YData', y_curve)
    %modifies the data in the curve plot object, enabling the curve to
    % be dynamically redrawn with new x and y coordinates for each frame
    % of the animation.
    %'XData' and 'YData'are the properties of the curve plot object that 
    % we want to modify. In this case, we want to update the x and y
    % coordinates of the data points that define the curve.
    set(curve_plot, 'XData', x_curve, 'YData', y_curve);
    
    % Pause for animation
    % The pause() function introduces a 0.07-secondS pause before 
    % executing the next iteration of the loop,typically used to control 
    % the speed of an animation loop.
    pause(0.07);
end
