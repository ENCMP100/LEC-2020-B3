% Lecture 6 Part 3 Plots
% Chapter 3.5 Attaway

% NOTE: Please try the plot formatting options described in
% Attawat page 100.

% Plot Example 1
% ==============
% Attaway pg 95
% This is a really simple plot of just one point!
% Create coordinate variables and plot a red '*'
x = 11;
y = 48;
plot(x,y,'r*')
% Change the axes and label them
axis([9 12 35 55])
xlabel('Time')
ylabel('Temperature')
% Put a title on the plot
title('Time and Temp')


% Plot Example 2
% ==============
% A line gaph
clf % clearing the previous figure
x = 1:6;
y = [1 5 3 9 11 8];
plot(x,y)


% Plot Example 3
% ==============
% Attaway pg 99
% This creates 2 different plots, in 2 different
% Figure Windows, to demonstrate some plot features
close all % closing all figures
x = 1:5; 
y1 = [2 11 6 9 3];
y2 = [4 5 8 6 2];

% Put a bar chart in Figure 1
figure(1)
bar(x,y1)

% Put plots using different y values on one plot
% with a legend
figure(2)
plot(x,y1,'k') % plot a line in black, using default solid line format
hold on % forces the previous plot to stay when the next plot is made
plot(x,y2,'ko') % plot in black, mark points in circles but with no line
grid on
legend('y1','y2')


% Plot Example 3
% ==============
% Attaway pg 100

% This script plots sin(x) and cos(x) in the same Figure Window
% for values of x ranging from 0 to 2*pi
clf
x = 0: 2*pi/40: 2*pi;
y = sin(x);
plot(x,y,'ro')
hold on
y = cos(x);
plot(x,y,'b+')
legend('sin', 'cos')
xlabel('x')
ylabel('sin(x) or cos(x)')
title('sin and cos on one graph')

