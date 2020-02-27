function outarg = conevol(radius, height)
% CONEVOL calculates and returns the volume of a cone with a given radius
% and height.

if radius < 0
    error('Radius of a cone must be positive');
end

outarg = (pi/3) * radius^2 * height;
end