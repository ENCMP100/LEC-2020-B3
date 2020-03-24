function [angle, velocity] = calcshootparams
% CALCSHOOTPARAMS calculates the angle and velocity of throw returns them.

disp('Kong (facing west):');
angle = randi(90);
fprintf('    Angle: %d\n', angle)
angle = 180 - angle;

velocity = randi([1 100]);
fprintf('    Velocity: %d\n', velocity)

end