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


