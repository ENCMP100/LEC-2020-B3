function [area, circumference] = circleinfo(radius)
% CIRCLEINFO: This function calculates and returns the area and
% circumference of a circle of a given radius.
%
% Input:
%    RADIUS: the radius, can be a scalar, vector or a matrix. If a negative
%    radius is provided, the function produce an error and aborts.
%
% Output:
%    AREA and CIRCUMFERENCE of the circle. They have the same dimensions as
%    the input RADIUS.
%
% ENCMP100 B3 - Winter 2020.
%

if any(radius(:) < 0)
    error('Radius must be positive')
end

area = pi * radius.^2;
circumference = 2 * pi * radius;

end

