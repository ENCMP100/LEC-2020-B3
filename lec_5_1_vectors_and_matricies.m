% Lecture 3 Part 2, Basics of Vectors and Matricies
% Chapter 2.1 Attaway

% Row Vectors
% ===========

% Initializing a row vector
vec1 = [1 2 3 4 5]

vec2 = [1,2, 3,4,5]



% using the colon operator
vec3 = 0:10

vec4 = 0:2:10 % 0 to 10 in increments of 2

vec = 0:3:10

vec5 = 10:-1:0;


% Column Vectors
% ==============

% define column vectors by using semicolon to 
% separate elements, instead of
% white space or comma
cv1 = [1;2;3;4;5]

% Alternatively, create a row vector and then use
% the "transpose" operator (single quote) to 
% transpose it into a column vector
cv2 = [1:5]'



% Matricies
% =========

% Defining a 2x3 matrix; use a new line for the second row
mat1 = [1 2 3
        4 5 6];
    
% we can also use a semicolon to separate rows
mat2 = [1 2 3; 4 5 6]



% creating linearly space vectors using the "linspace" function
vec6 = linspace(1,5,10) % 10 points from 1 to 5, inclusive
vec7 = linspace(1,5) % default count of 100 points


% Ex.
% create logarithemically spaced vectors using the "logspace" function
vec8 = logspace(1,5,10)


% using the "diff" function to compute the difference between adjescent
% elements of a vector



% Combining two vectors
vecA = 1:3;
vecB = linspace(1, 10, 5);
VecC = [vecA vecB]


% Accessing an element of a vector
vecA = 1:2:10
vecA(2)

vecA(2) = 25;
vecA

% Accessing several elements of a vector using an index vector
vecA = 1:2:20
vecA([2,4,5]) % here, [2 4 5] is called the index vector.

vecA([2,4,5]) = 0;
vecA

vecA([2,4,5]) = [100 200 300];
vecA


% Column vectors
% ==============

% define column vectors by using semicolon to separate elements, instead of
% white space or comma
cv1 = [1;2;3;4;5]

% Alternatively, create a row vector and then use the "transpose" operator
% (single quote) to transpose it into a row vector
cv2 = [1:5]'

% Use index vector to access elements of a column vector, just the same way we
% did so for the row vector
cv2([2 3])

cv2([2 3]) = 100;
cv2


% Matricies
% =========

% Defining a 2x3 matrix; use a new line for the second row
mat1 = [1 2 3
        4 5 6];
    
% we can also use a semicolon to separate rows
mat2 = [1 2 3; 4 5 6]

% built-in functions
mat3 = ones(4)    % Creates a 4x4 matrix of 1's
mat4 = ones(4,2)  % Creares a 4x2 matrix of 1's

mat5 = zeros(4)
mat6 = zeros(4,2)

mat7 = rand(4,3)
mat8 = randi(100,4,2)

% Accessing an element of a matrix
mat8(3,2)  % element at 3rd row, 2ns column

mat8(:,1) % all rows, first column. This results a column vector


mat8(2,:) % second row, all columns
    
mat8(2:4, 1) % rows 2 to 4, first column

