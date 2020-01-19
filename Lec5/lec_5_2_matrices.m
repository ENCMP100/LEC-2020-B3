% Lecture 5 Part 2, Matrices
% Chapter 2.1 Attaway

clear
clc

% Creating Matrices
% =================

% Defining a 2x3 matrix; use a new line for the second row
mat1 = [1 2 3
        4 5 6]
    
% we can also use a semicolon to separate rows
mat2 = [1 2 3; 4 5 6]


% using built-in functions
mat3 = ones(4)    % Creates a 4x4 matrix of 1s
mat4 = ones(4,2)  % Creares a 4x2 matrix of 1s

mat5 = zeros(4)   % Creates a 4x4 matrix of 0s
mat6 = zeros(4,2) % Creares a 4x2 matrix of 0s


% using rand to create matrices of uniformly distributed
% random numbers from 0 to 1
mat7 = rand(3) % 3x3 
mat8 = rand(3,2) % 3x2

% using randn to create matrices of normally distributed
% random numbers
mat9 = randn(3) % 3x3 
mat10 = randn(3,2) % 3x2

% using randi to create matries of random integers
% note: the first vector argument specifies the min and max values
mat11 = randi([5 50], 3) % 3x3
mat12 = randi([5 50], 3, 2) % 3x2


% Referring to and Modifying Matrix Elements
% ==========================================

clear
clc

mat = rand(3) % 3x3 random matrix

% Using "subscripted indexing" i.e. by using row,col indicies
mat(2,3)  % get value of element at 2nd row, 3rd column
mat(2,3) = 10 % modify the value

% Accsing an entire column using : operator
mat = randi([1 100], 5)
mat(:, 2) % 2nd column
mat(:, 3) % 3rd column
mat(:, end) % last column


% Accsing an entire row using : operator
mat = randi([1 50], 5)
mat(2, :) % 2nd row
mat(3, :) % 3rd row
mat(end, :) % last row

% Accessing a subset of a matrix
mat = randi([1 50], 5)
mat(2:4, 1:3) % rows 2 to 4 and columns 1 to 3

% Modifying a subset of a matrix by assigning a scalar
% to all elements
mat(2:4, 1:3) = -1

% Modifying a subset of a matrix by assigning 
% another matrix with same dimensions as the subset
mat(2:3, 4:5) = [88 88; 99 99]

% Using "liner indexing" to access an element
mat = randi([1 50], 5)
mat(12)

% Dimensions and size of a matrix
mat = randi([1 50], 5, 4)
size(mat)
[r, c] = size(mat)
length(mat) % returns the largest dimension
numel(mat) % returns the number of elements


% Using empty vectors to remove a row or a column
mat(:,2) = [] % deletes the 2nd column
mat(2:4, :) = [] % deletes rows 2, 3 and 4


% Adding an entire row or a column to a matrix
% This is NOT good practice as it is a slow operation
mat = randi([1 50], 3)
mat(6,:) = 99 % Add a row of the same scalars

mat(:,4) = [1 2 3 4 5 6]' % Add a column vector
