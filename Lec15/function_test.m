% This script tests various user defined functions
%
% Author: YOUR NAME
% ENCMP100 B3 - Winter 2020.


%% Calculating the volume of a cone

clear
clc

% Taking radius and height as inputs
r = input('Radius of the cone: ');
h = input('Height of the cone: ');

% Calculating the volume within this script
if r < 0
    error('Radius of a cone must be positive')
end

volume = (pi/3) * r^2 * h; 
fprintf('Volume computed by the script: %.2f\n', volume)

% Using the user-defined function conevol.
% NOTE: Put a breapoint inside te function and check the workspace/scope
whos
volume2 = conevol(r, h);
fprintf('Volume computed by the user-defined function: %.2f\n', volume2)


%% User defined function returning two arguments
% Calculating and returning the circumference and area of a circle
clear
clc

rad = input('Enter radius: ');

% using the user-defined class circleinfo
[a, c] = circleinfo(rad);
fprintf('Radius = %.2f\nArea = %.2f\nCircumference = %.2f\n\n', rad, a, c)

%% Function containing local vaiables
clear
clc

rad = 2;
h = 5;

% NOTE: Put a breapoint inside te function and check the workspace/scope
whos
area = cyl_area(rad, h);
fprintf('Radius: %d\nHeight: %d\nSurface area: %.2f\n', rad, h, area)

%% User-defined functions with no return values.
clear
clc

print_cumsum(2)

print_cumsum(-2)

print_cumsum([2 8])

print_cumsum([8 2])

print_cumsum([2 8 2])

print_cumsum([8 2 2])

% The followings should print an error message
print_cumsum([])
print_cumsum([1 2 3 4])
print_cumsum([1 2; 3 4])

%% Defining a local function which can only be accessed within the script which defines it.

clear
clc

rad = 2;
h = 5;

vol = cyl_vol(rad, h);
fprintf('Radius: %d\nHeight: %d\nVOlume: %.2f\n', rad, h, vol)


function v = cyl_vol(radius, height)

crossSection = pi * radius;
v = crossSection * height;

end

