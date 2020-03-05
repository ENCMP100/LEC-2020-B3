function print_cumsum(range)
% PRINT_CUMSUM calculates and prints the cumulative sum of numbers in the
% specified range. 
%
% If the input argument range is a scalar, cumulative sum
% of numbers from zero to range is calculated in steps of 1.
%
% If range is a vector of 2 elements, the cumulative sum is calculated
% between the first and second elements of the vector in steps of 1.
%
% If range is a vector of 3 elements, the cumulative sum is calculated
% between the first and second elements of the vector in steps specified by
% the third element.
%
% Author: Kamal Ranaweera
% Winter, 2020.

switch numel(range)
    case 1
        if range > 0
            x = 0 : range;
        else
            x = 0 : -1 : range;
        end
    case 2
        if range(1) < range(2)
            x = range(1) : range(2);
        else
            x = range(1) : -1 : range(2);
        end
    case 3
        if range(1) < range(2)
            x = range(1) : range(3) : range(2);
        else
            x = range(1) : -abs(range(3)) : range(2);
        end        
    otherwise
        error('Error: Input argument must be a scalar or a vector of length 2 or 3.')
end

y = cumsum(x);
disp(y)
end