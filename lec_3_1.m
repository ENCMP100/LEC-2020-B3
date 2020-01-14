% Lecture 3 Part 1, Expressions and Built-in Functions
% Chapters 1.4 and 1.8 Attaway

% This script demonstrates the use of 
%   (a) expressions, opertors and precedence
%   (b) built-in constants, and
%   (c) built-in funcions


% (a) Expressions, Operators and Precedence 
% =========================================


4 + 5   % Addition

4 - 5   % Subtraction

-5      % Negation

4 * 5   % Multiplication

8 / 4   % Division (divided by)

8 \ 4   % Division (divided into)

3^2     % Exponent

% Operator precedence examples
4 + 5 * 3

(4 + 5) * 3

2*3^2

(2*3)^2

-5^2

(-5)^2

5 * 4 / 2 * 3



% (b) Built-in Constants 
% ======================

% buil-in constants
pi 

Inf   % infinity
1.5/0

NaN   % Not a Number
0/0
Inf/Inf
0 * Inf



% (c) Built-in Functions 
% ======================

% list all built-in elementary functions
help elfun


% Absolute value
abs(-5)     % Takes -5 as the "argument" 
            % and "returns" its magnitude
abs(5)


% sine of an angle
sin(pi/6)   % argument is in radians
sind(30)    % argument is in degrees. 
            % Note pi/6 radians = 30 degrees

% sine inverse (arc sine)
asin(0.5)   % the return is equal to pi/6
asind(0.5)  % the return is 30 degrees


% tan of an angle
tan(pi/6)
tand(30)

% tan inverse
atan(0.5774)
atand(0.5774)


% Random Numbers (Pseudorandom numbers)
% -------------------------------------

rand    % generates a uniformly disreibuted
        % random number between 0 and 1

rand

rand


rng('shuffle')  % sets a clock-based seed for the
                % random number generator
                
rand
rand


rng('default')  % restores the default seed which
                % is used when MATLAB is started 

rand
rand


% Saving the current state of the random number
% generator and restoring it later

myState = rng % saving the state in a variable

rand    % generating some random numbers
rand
rand 

rng(myState)   % restoring the saved state

rand    % re-generating the same sequence of random numbers
rand
rand 


% Random numbers from a normal distribution
randn
randn
randn

% Random integers from a given range
randi(20)  % a random integer from 1 to 20
randi(20)
randi(20)


randi([5, 20]) % a random integer from 5 to 20, inclusive
randi([5, 20])
randi([5, 20])
