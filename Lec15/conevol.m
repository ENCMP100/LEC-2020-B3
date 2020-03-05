function outarg = conevol(radius, height)
% CONEVOL calculates and returns the volume of a cone with a given radius
% and height.

if any(radius(:) < 0)
    error('Radius of a cone must be positive');
end

if any(height(:) < 0)
    error('Height of a cone must be positive');
end

outarg = (pi/3) * radius.^2 .* height;
end