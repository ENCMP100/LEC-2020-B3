% In this script, we will demonstrate two different types of string
% representations in MATLAB along with relaed operations. The two
% representations are character arrays and string scalars (or string
% objects)
%
% References: Attaway, chapter 7.1 to 7.4, excuding 7.2.4.
% Lec #18, March 12, 2020.


clear

% Single character
c = 'H';

% Character array
myCharArray = 'Hello';

% A string scalar or string object. Note the double quotes.
myString = "Hello";


% Let's check what is in the environment
whos

%% String Operators

% Empty string
str1 = "";

% Concatenating strings with + operator
str2 = "Hello";
str3 = "World";
result = str2 + str3
result2 = str2 + " " + str3

% Accessing the char array stored 
% inside a string object
str = "Lazy rabbit"
str{1} % note the single quotes of the result

str{1} = 'speedy turtle'


%% String Functions

% STRING: converts a regular character array to a string object
charArray = 'Hello there!';
string(charArray)


% STRLENGTH: retrns the length of character array in a string object
%            Note: the regular LENGTH function will not work with stirng
%            objects.
str = "Hello everybody";
strlength(str)


% BLANKS: creates a blank vector of characters.
blankVec = blanks(4)

% DEBLANK: removes trailing white spaces
% in strings and character arrays
deblank('Hello    ')
deblank("Hello    ")
deblank('  Hello    ')
deblank("  Hello    ")

% SRTRIM: removes leading and trailing white spaces
% in strings and character arrays
strtrim('  Hello    ')
strtrim("  Hello    ")
strtrim('  Hello World!   ')
strtrim("  Hello World!   ")

% STRCAT: concatenates stings (similar to + operator)
str1 = "Hello";
str2 = "There";
strcat(str1, str2)
strcat(str1, " ", str2)

% SPRINTF: very similar to fprintf but this one returns a string instead of
% dosplaying the ooutput on the command line;
str = sprintf('The value of pi is %.2f', pi);
disp(str)

% UPPER and LOWER: Chaging case pf characterarays and strings
upper('Hello')
upper("World!")

lower('Hello')
lower("World!")


% STRCMP and STRCMPI: case-sensitive and case-insensitive 
% string comparisons
str1 = "Hello";
str2 = "hello";
str3 = "World!";

strcmp(str1, str2)
strcmpi(str1, str2)

strcmp(str1, str3)
strcmpi(str1, str3)

% STRFIND: finds all occurrences of a string inside another string
str = "You cannot end a sentence with because because because is a conjunction.";
strfind(str, "because")


% STRREP: replaces all occurrences of a string with another one
str = "the quick brown fox jumps over the lazy dog";
strrep(str, "the", "a")


% ISLETTER: returns a logical vector which identifies letter positions
% by logical true
str = "y = m*x + b";
isletter(str)

% ISSPACE: returns a logical vector which identifies white-space positions
% by logical true
str = "y = m*x + b";
isspace(str)


% ISCHAR: returns logical true if the input argument is a character or a
% character vector.
ischar('h')
ischar('Hello')
ischar("Hello") % returns false because input is a string object
ischar(rand(5))


% ISSTRING: returns logical true if the input argument is a string object
isstring('h')
isstring('Hello')
isstring("Hello") % returns true because input is a string object
isstring(rand(5))


% NUM2STR and STR2NUM: conversion from number to string and string to
% number
num2str(25)

str2num("54")
str2num('54')

% STRTOC: string tokanization
str = "You cannot end a sentence with because because because is a conjunction.";
[token, remainder] = strtok(str)

del = " ";

while str ~= ""
    [token, str] = strtok(str, del);
    disp(token)
end




