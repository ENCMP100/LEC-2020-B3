% Lecture 5 Part 1, Vectors
% Chapter 2.1 Attaway

% Various ways to create vectors
% ==============================

% Initializing a row vector
v1 = [1 2 3 4 5]   % using white space to separate elements
v2 = [1,2, 3,4,5]  % using comma to separate elements



% using the colon operator
v3 = 0:10    % 0 to 10, increments of 1
v4 = 0:2:10  % 0 to 10 in increments of 2
v5 = 0:3:10  % 0 to 10 in increments of 3.
             % Note the last value is 9
v6 = 10:-1:0 % 10 to 0, decremented by 1
v7 = 10:-3:0 % 10 to 0, decremented by 3


% creating linearly spaced vectors using the "linspace" function
v8 = linspace(1,4) % default count of 100 points from 1 to 4, inclusive
v9 = linspace(1,4,10) % 10 points from 1 to 4, inclusive


% creating logarithmically spaced vectors using the "logspace" function
v10 = logspace(1,4) % default count of 50 points from 10^1 to 10^4, inclusive
v11 = logspace(1,4,4) % 4 points from 10^1 to 10^4, inclusive


% creating a row vector of random numbers
v12 = rand(1, 5) % 1 row and 5 columns, uniformly distributed between 0 to 1
v13 = randn(1,5) % 1 row and 5 columns, normally distributed


% concatenating row vectors
% =========================
v1 = [1 2 3 4]
v2 = [-1 -2 -3]
newVec = [v1 v2] % row concatenation


% Referring to and Modifying Elements
% ===================================
clear
clc

v1 = rand(1, 5) % creating a random 1x5 vector
thirdElement = v1(3) % access 3rd element
v1(3) = 10 % assign 10 to the 3rd element


v2 = v1([2 4 5]) % Extracting 2nd, 4th and 5th values of v1.
                 % Vector [2 4 5] here is called an 
                 % index vector

% Using "end" to access the last element
v1(end) % referring to the last element               
v1(end) = 100 % assign 100 to the last element 



% Referring to an element beyond the last element
v1(8) % Note that V1 has only 5 elements

% Setting a value to an element beyond the last element
v1(8) = 55 % Note that V1 is now extended to an 8-element vector
           % Elements 6 and 7 are set to 0
           % This is BAD practice because resizing a
           % vector this way is a slow operation.
       
    
           
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

% creating a random column vector
cv3 = rand(5, 1)  % 5x1, uniformly distributed
cv4 = randn(5, 1) % 5x1, normally distributed


% Empty vectors and their use
% ===========================
emptyVec = []

v1 = 1:10

v1(2) = [] % eliminates the 2nd element

v1(end-3:end-1) = [] % eliminates the 