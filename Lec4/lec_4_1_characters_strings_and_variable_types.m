% Lecture 4 Part 1, Characters, Strings, and Variable Types
% Chapter 1.5 and 1.7, Attaway


% Characters, Chararacter Arrays, and String Objects
% ==================================================


% Defining a single character and assigning it to a variable
char1 = 'x'
char2 = 'k'
char3 = '4'  % This is the character 4, NOT the number 4.
num = 4      % This is the number 4

whos

% Defining an array (or vector) of characters 
myCharArray1 = 'Hello World!'

% We can also define the above character arrays literally as an array of
% characters as follows.
myCharArray2 = ['H','e','l','l','o',' ','W','o','r','l','d','!']

% You can use the "length" function to find the length of a character array
numChars1 = length(myCharArray1)
numChars2 = length(myCharArray2)

whos

% With recent versions of MATLAB, you can define array of characters as a
% special type of "string" objects. Note that strings are internaly
% represented differently than character arrays.
myString1 = "Hello World!"    % Note that we use double quotes to define strings
                              % We use single quotes to define character
                              % arrays.
                              
                              

% Types (or classes)
% ==================

% Let's clear the work space and the command window.
clear
clc


% Let's assign several numeric, character, character-array and strnig
% values to some variables
myNum = 10
myChar = 'A'
myCharArray = 'ENCMP100 is Awesome'
myString = "ENCMP100 is Awesome"

whos


% You can use the built-in function "class" to find the class or type of a
% variable programatically. The "class" function returns the variabe type
% as a string.
class(myNum)

class(myChar)

class(myCharArray)

class(myString)



% Type Casting
% ============

% We can use the built-in function "double" to convert a character value
% into a numeric value


num1 = double('A')

num2 = double('B')

num3 = double('a')

num4 = double('b')


numVec1 = double('hello')


% We can use the built-in function "char" to convert a numeric value
% into a character value

char1 = char(65)

char2 = char(99)

charArray = char([104   101   108   108   111])





