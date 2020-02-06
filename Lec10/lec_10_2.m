% Lecture 10 Part 2: FOR loops
% Chapter 5.1 and 5.2


%% FOR loop (iterating through a fixed number of times
clc
for i = 1:5
    fprintf('%d: Hello world\n', i);
end

%% FOR loop ex. #2
clc
vec = randi(99, 1, 5)
for i = vec
    fprintf('%d: Hello world\n', i);
end

%% FOR loop ex. #3
% Inputting a vector of values one by one
clc
vec = zeros(1, 5); % pre-allocate storage
for i = 1:length(vec)
    vec(i) = input('Enter a number: ');
end
disp('You entered:')
disp(vec)

%% EXERCISE: Create version 3 of "circleinfo.m" which would perform the
% computation for 5 times.



%% Nested FOR loops
clear
clc

for a = 1:5
    for b = 1:3
        fprintf('a=%d, b=%d: Hello world\n', a, b)
    end
    fprintf('\n')
end


%% Printing a triangle of stars
clear
clc

rows = input('Enter number of rows: ');
for i=1:rows
    % inner loop just iterates to the value of i
    for j=1:i
        fprintf('* ')
    end
    fprintf('\n')
end


%% 
% Using SIZE function to get the rows and columns
% of a matrix and then iterating through 
% all rows and and all columns, row by row

clear
clc

mat = randi([10, 99], 4, 3);
disp(mat)

[m, n] = size(mat); % SIZE function returns the  
                    % number of rows and columns
for r = 1:m
    for c = 1:n
        val = mat(r,c);
        if val < 50
            fprintf('%6c', '.')
        else
            fprintf('%6c', '*')
        end
    end
    fprintf('\n')
end





