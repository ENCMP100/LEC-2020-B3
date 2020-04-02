% Lecture 23
% Command-line debugging techniques and persistent variables
%

% Command-line debugging
% ======================

clear
clc

% try the following commands on the command line 
% and see the effect.
%
% dbstop lec23 
% dbstop lec23 32
% dbclear lec23
% dbstop lec23 30
% dbstop lec23 34
% dbstop lec23 44
%
% lec23
% dbstep
% dbstep
% dbstep
%
% dbcont
% dbcont
% dbquit

rad = 4;

[a, c] = circleinfo(rad);


fprintf('Radius = %.2f\n', rad)
fprintf('Circumference = %.2f\n', c)
fprintf('Area = %.2f\n\n', a)

disp('Mary had a little lamb')
disp('Row row row your boat')
disp('Old macdonald had a farm')

for r = rand(1,10) * 20
    [a, c] = circleinfo(r);
    
    fprintf('Radius = %.2f\n', rad)
    fprintf('Circumference = %.2f\n', c)
    fprintf('Area = %.2f\n\n', a)
end
fprintf('Good bye ...\n')

%% Command-line Debugging in Practice
%
% Let's clear all debug points and try few things that are
% more applicable to the real world. When we run this code,
% we will get some errors inside the circileinfo file. I 
% will show you how to use the error information to put 
% appropriate breakpoints inside the file and debug the code
% during the class.

% Let's clear all breakpoints and run this file again by
% typing the following commands in the command prompt
%
% dbclear lec23
% lec23
%

clear
clc

r = rand(2,4) * 20;
[a, c] = circleinfo(r);

disp('Radius')
disp(r)

disp('Area')
disp(a)

disp('Circumference')
disp(c)


%% Persistent Variables
%  ====================

% Let's review the function in aggregate.m and fix it to
% make sure it works in the way it's documentation
% describes.

clear all
clc

vals = randi(10, 1, 10);
disp(vals)
for i = 1 : length(vals)
    result = aggregate(vals(i));
    fprintf('Result: %d\n', result)
end



