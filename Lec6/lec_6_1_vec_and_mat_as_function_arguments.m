% Lecture 6 Part 1 - Matrices as function arguments
% Chapter 2.1 and 2.2 Attaway

clear
clc

% Changing matrix dimensions
mat = [(1:4)' (5:8)' (9:12)']
                        
% RESHAPE: takes values of matA column-by-column and 
% reorganizes them into another matrix of given number of
% rows and columns
reshape(mat, 6, 2) 

% FLIPLR: flips left to right
mat
fliplr(mat)

% FLIPUD: flips upside down
mat
flipud(mat)


% ROT90: rotates a matrix 
mat
rot90(mat) % 90 degrees counterclockwise
rot90(mat, 2) % 180 degrees counterclockwise
rot90(mat, -1) % 90 degrees clockwise


% Creating a large matrix by repeating a smaller one
mat = [1 2; 3 4]
mat2 = repmat(mat, 2) % repeats over 2 rows and 2 columns
mat3 = repmat(mat, 3, 2) % repeats 3 rows and 2 columns



% Matricies and Vectors as Function Arguments
% ===========================================

% absolute value of all elements
mat = reshape(-5:6, 4, 3) % creating a matrix by reshaping a vector
mat2 = abs(mat)


% sign function
vec = -2:2
vec2 = sign(vec)


% min / max functions
vec = [5:2:15]
min(vec) % minimum value of the vector
max(vec) % maximum value of the vector

mat = randi(99, 4, 3) 
min(mat) % results a row vector containing min of each column
max(mat) % results a row vector containing max of each column


% sum and cumulative sum applies to vectors and matricies
vec = 1:4
sum(vec) % sum of all elements
cumsum(vec) % cumulative sum vector


mat = randi(10, 3)
sum(mat) % sum of elemnts in each column
cumsum(mat) % cumulative sum of each column

% product applies to vectors and matricies
vec
prod(vec) % product of all elements
cumprod(vec) % cumulative product of elements


mat
prod(mat) % product of elements in each column
cumprod(mat) % cumulative product of each column

% difference between adjuscent elements
vec
diff(vec)

mat
diff(mat) % diff of each column


