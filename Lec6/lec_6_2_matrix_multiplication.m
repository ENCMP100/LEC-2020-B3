% Lecture 6 Part 2 - Matrix multiplication
% Chapter 2.5 Attaway


% multiplication of two matricies
mat1 = randi(5,3,4) % 3x4 matrix
mat2 = randi(5,4,3) % 4x3 matrix

mat1 * mat2 % results a 3x3 matrix

mat2 * mat1 % results a 4x4 matrix



% multiplication between a vector and a matrix
vec = randi(5,1,3) % 3 element row vector
mat = randi(5,3,4) % 3x4 matrix

vec *  mat % results a 1x4 row vector

% dot product between a row vector and a column vector
v1 = [1:4] % 1x4 row vector
v2 = randi(5,4,1) % 4x1 column vector

v1*v2
dot(v1,v2)




