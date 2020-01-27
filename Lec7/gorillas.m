% GORILLAS:This is a MATLAB implementation of a simplified 
% version of the game Gorillas which was first introduced 
% with MS-DOS. 
%
% This project was initially adapted to the ENCMP course by Dr. Dileepan
% Joseph.
% 
% This code is released under MIT License
%
% Jan - April, 2020

%% Requirements
%
% 1. Use a bar chart with following specs to represents a 2D section of a
% series of buildings.
%   1.1 The first bar (building) must be centred at x = 25m
%   1.2 There must be 15 buildings located 25m apart.
%   1.3 Width of a building must be 20m (i.e. 80% of the gap between two
%       building centres)
%   1.4 Buildings must have a random height between 100m to 200m, whole
%       numbers
%   1.5 Both x and y axes limits must be 0 to 400m
%   1.6 Set the x-axis label to be "Distance (m)", y-axis label to be
%   "Height (m), and the figure title to be "Gorillas in MATLAB"
%
% 2. Place the player 1 on top of a randomly selected building from
%    building #1 to #7. Denote the player by a pentagon of size 15 points.
%
% 3. Place the player 2 on top of a randomly selected building from
%    building #8 to #5. Denote the player by a pentagon of size 15 points.
%
% 4. Player 1 attacking player 2 with a banana!
%    4.1 Prompt for and take the angle of the throw (0 - 90 degrees)
%    4.2 Prompt for and take the velocity (m/s) of the throw
%    4.3 Calculate and plot the projectile from player 1's location towards
%        the player 2 as a line graph in red
%
% 5. Player 2 attacking player 1 with another banana
%    4.1 Prompt for and take the angle of the throw (0 - 90 degrees)
%    4.2 Prompt for and take the velocity (m/s) of the throw
%    4.3 Calculate and plot the projectile from player 2's location towards
%        the player 1 as a line graph in blue
%
% 6. When the program is replayed, the same figuer window should be used
%    after clearing all previous graphics


%% Reset the envoronment

% Setting up the parameters
first = 25;
step = 25;
count = 15;
buildingWidth = 20;
minH = 100;
maxH = 200;
xmax = 400;
ymax = 400;

% Generating x and y vectors for the bar chart
x = first : step : step * count;




% Plotting the chart
w = buildingWidth / step;




%% Placing players (gorillas)

% Placing player 1



% Placing player 2




%% Player 1 fires a banana

% Taking inputs
% disp('Gorilla (facing east):');
% a = round(input('    Angle (degrees)? '));
% u = round(input('    Velocity (m/s)? '));

% Computing the trajectory
% x0 = 
% y0 = 
% x = 
% y = y0 + tand(a) * (x - x0) - 9.81 * (x - x0).^2/(2 * u^2 * (cosd(a))^2);


%% Player 2 fires a banana








