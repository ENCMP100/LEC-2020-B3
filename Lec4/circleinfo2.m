% CIRCLEINFO2 calculates the circumference and area of a circle
% and display them.
%
% Author: YOUR NAME
% ENCMP100 B3, Winter 2020.
% Reference: Attaway, chapter 3.1 to 3.4

%clear workspace and the command window
clear
clc

% Radius of the circle
radius = input('Enter Radius: ');

% Calculating the circumference
circ = 2 * pi * radius;

% Calculating the area
area = pi * radius^2;

% Display the result
% fprintf('Circumference of a circle with radius %.2f is %.3f\n', radius, circ);
fprintf('\nRadius: %.2f\nCircumference: %.3f\nArea: %.3f\n', radius, circ, area);