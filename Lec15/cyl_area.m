function area = cyl_area(radius, height)
% CYL_AREA calculates and returns the surface area of a cylinder with a
% given radius and height.

circleArea = pi * radius.^2;
wallArea = 2 * pi * radius * height;

area = 2 * circleArea + wallArea;

end