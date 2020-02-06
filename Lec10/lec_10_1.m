% Lecture 10 Part 1: "IS" functions. These are used for checking 
% variable "types"
% Chapter 4.5

%% ISEMPTY
clear
clc

isempty(val) % This produces an error 
             % val does not exist yet
             % in the workspace
             
val = []; % Empty vector
isempty(val)

val = ''; % Empty string
isempty(val)

val = 10;
isempty(val)

val = 'Hello';
isempty(val)


%% ISLETTER
clear
clc

isletter(val) % This produces an error 
              % val does not exist yet
              % in the workspace

val = 'Hello';
isletter(val)

val = 'Hello World!'; 
isletter(val)

val = 'Hi 8'; 
isletter(val)

val = ''; 
isletter(val)

val = 8; 
isletter(val)

val = [1 2 3 6]; 
isletter(val)

%% ISA
% testing data type (class) of variables
clear
clc

doubleVal = 10;
charVal = 'ABCD';

isa(doubleVal, 'double')
isa(charVal, 'double')

isa(doubleVal, 'char')
isa(charVal, 'char')





