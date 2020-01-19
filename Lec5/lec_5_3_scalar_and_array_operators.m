% Lecture 5 Part 3, Scalar and Array Operators 
% on Vectors and Matrices
% Chapter 2.2 Attaway

clear
clc

% Scalar Operations
% =================

v = [3 7 2 1]
v * 3 % scalar multiplication
v / 2 % scalar division
v + 10 % scalar addition

mat = [4:6; 3:-1:1]
mat * 2 % scalar multiplication
mat / 4 % scalar division
mat - 5 % scalar subtraction

% Array (element-by-element) Operations
% =====================================

v1 = 2:5
v2 = [33 11 5 1]

v1 + v2
v1 - v2
v1 .* v2
v1 ./ v2


mata = [5:8; 9:-2:3]
matb = reshape(1:8,2,4)

mata - matb
mata .* matb

