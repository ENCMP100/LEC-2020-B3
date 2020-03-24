%
% Cell Arrays
%
% Reference: Attaway, Chapter 8.1
%
% Lecture 21. March 24, 2020
%

clear
clc

% Creating a cell array containing different types of elements
cellVec = {12, 'aeiou', 1:100, "Hello World!"}

cellMat = {12, 'aeiou'; 1:100, "Hello World!"} 

whos
class(cellVec)
class(cellMat)


% Accessing elements of a cell array or cell matrix
val1 = cellVec{2}
cellVec{2} = 'Mary had a little lamb'

val2 = cellMat{1,2}
cellMat{1,2} = 'Mary had a little lamb'


% Cell arrays of charactor vectors
cvnames = {'Sue', 'Cathy', 'John'}

strlength(cvnames)

% CELLSTR: Converting a string array into a cell array of characters
birds = ["parrot", "crow", "nightingale"]
cellstr(birds)

% STRJOIN: Joining all strings in a cell array into one string
cellArray = {'2020' '03', '24'}
strjoin(cellArray, '-')

% STRSPLIT: Splitting a string into a cell array
strsplit('2020-03-24', '-')
strsplit('the quick brown fox jumped over the lazy dog') % default delimiter of white space


% ISCELLSTR: Checking if all elements of a cell array are strings
names = {'Mary', 'John', 'Peter'}
iscellstr(names)

data = {'Amy', 20}
iscellstr(data)

% CELL: creates empty cell arrays
x1 = cell(1) % creates one-element cell.
x2 = cell(1,3) % creates a 1x3 cell array
x3 = cell (3,1) % creates a 3x1 cell array
x4 = cell(3) % creates a 3x3 cell array


% FIELDNAMES: this is a function for listing names of all fields
% in a structure. It results a cell array.
employee = struct('FirstName', 'James', ...
                  'LastName', 'Beck', ...
                  'Age', 27, ...
                  'Street', '123 40 Ave', ...
                  'City', 'Edmonton', ...
                  'Province', 'AB');

fieldnames(employee)              