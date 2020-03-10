function [angle, velocity] = getinputs
% GETINPUTS obtains the angle and velocity of throw from the commandline
% and returns them.

angle = round(input('    Angle (degrees)? '));
velocity = round(input('    Velocity (m/s)? '));

end