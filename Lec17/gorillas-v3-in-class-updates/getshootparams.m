function [angle, velocity] = getshootparams
% GETSHOOTPARAMS obtains the angle and velocity of he throw as user-inputs
% and returns them.


disp('You (facing east):');
angle = round(input('    Angle (degrees)? '));
velocity = round(input('    Velocity (m/s)? '));

end