%% Functions that take no arguments
%  ================================
% If a function does not take any input argument, you can 
% eliminate the input argument list along with braces.
% e.g. see the getname function in getname.m

clear
clc

[first, last] = getname;


%% Commands
%  ========
% Functions that contains only string arguments and
% not returning any values can be called as commands.
% e.g. see the userdefined function greet in greet.m

% function form
greet('John') 

% command form
greet John

% When uncommented, the following command will thow an error
% because the second word separated by the white space will 
% be considered as the second input argument to the function
% in the command form. Note that the function "greet" only 
% takes one input argument. 

% greet John Carter

% The following works because the two words are part of the same
% string
greet 'John Carter'



