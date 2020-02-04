% Lecture 9: Selection Statements
% Chapter 4.1 to 4.4


% IF statement
num = rand   

if num < 0.5
    disp('The number is smaller than 0.5')
end


% IF/ELSE statement
num = rand;

if num < 0.5
    fprintf('The number %.2f is smaller than 0.5\n', num)
else
    fprintf('The number %.2f is greater than or equal to 0.5\n', num)
end

% EXERCISE: Create version 2 of "circleinfo.m" which would produce an 
% error if a negative radius value is entered



% Nested IF/ELSE statements
% CHECK OUT the "salesstatus.m" example script.


% Nested IF/ELSE statements that can be merged into 
% a more compact IF/ELSEIF/ELSE statements.

num = 0.6; %rand;

if num < 0.5
    fprintf('A: The number %.2f is smaller than 0.5\n', num)
else
    if num < 0.75
        fprintf('B: The number %.2f is greater than or equal to 0.5 but less than 0.75\n', num)
    else
        fprintf('C: The number %.2f is greater than or equal to 0.75\n', num)
    end
end

% IF/ELSEIF/ELSE version
if num < 0.5
    fprintf('A: The number %.2f is smaller than 0.5\n', num)
elseif num < 0.75
    fprintf('B: The number %.2f is greater than or equal to 0.5 but less than 0.75\n', num)
else
    fprintf('C: The number %.2f is greater than or equal to 0.75\n', num)
end


% A loooooong IF/ELSEIF/ELSE statements with all conditions testing EQUALITY
clc
day = input('Enter the day number (Monday = 1, etc): ');
if day == 1
    disp('It''s Monday')
elseif day == 2
    disp('Yay! it''s ENCMP100 day')
elseif day == 3
    disp('It''s Wednesday')
elseif day == 4
    disp('Yay! it''s ENCMP100 day')
else
        disp('Can''t wait until next Tuesday')
end


% SWITCH/CASE statement: a better alternative
day = input('Enter the day number (Monday = 1, etc): ');
switch day
    case 1
        disp('It''s Monday')
    case 2
        disp('Yay! it''s ENCMP100 day')
    case 3
        disp('It''s Wednesday')
    case 4
        disp('Yay! it''s ENCMP100 day')
    otherwise
        disp('Can''t wait until next Tuesday')
end

% Even more compact version ...
day = input('Enter the day number (Monday = 1, etc): ');
switch day
    case 1
        disp('It''s Monday')
    case {2, 4}
        disp('Yay! it''s ENCMP100 day')
    case 3
        disp('It''s Wednesday')
    otherwise
        disp('Can''t wait until next Tuesday')
end
