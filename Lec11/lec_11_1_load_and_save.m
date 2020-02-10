% Introduction to File Input and Output (Load and Save)
% Chapter 3.6

clear
clc

% Saving data to a text file
mat  = randi(100, 4, 3);
save mydata.dat mat -ascii

% view the file content on the command prompt
type mydata.dat

% Clear the workspace and load the data
clear
whos

load mydata.dat
whos


%% Appending another variable with same number of columns to the same file.
mat2 = rand(3);
save mydata.dat mat2 -ascii -append

% view the file content 
type mydata.dat


% clear the workspace and load the data
clear
whos

load mydata.dat
whos

%% Append another variable with a different number of columns
mat3 = [1 2 3 4; 5 6 7 8];
save mydata.dat mat3 -ascii -append

% view the file content 
type mydata.dat


% clear the workspace and load the data
clear
load mydata.dat


%% An example from the book

% This reads time and temperature data for an afternoon
% from a file and plots the data
load timetemp.dat

% The times are in the first row, temps in the second row
time = timetemp(1,:);
temp = timetemp(2,:);

% Plot the data and label the plot
plot(time,temp,'k*')
xlabel('Time')
ylabel('Temperature')
title('Temperatures one afternoon')

