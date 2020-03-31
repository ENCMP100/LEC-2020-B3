function newTotal = aggregate(val)
% AGGREGATE will take a scalar value VAL and then calculates
% the sum of the VALs over multiple calls to the function.
%

if length(val) ~= 1
    error('The input argument must be a scalar');
end

pastTotal = 0;

newTotal = pastTotal + val;

pastTotal = newTotal;

end