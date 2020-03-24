function stage = setstage(numBuildings)
% SETSTAGE initializes a new stage with the specified number of buildings
% and returns the parameters of the created stage in a structure.
%


clf % clear previously plotted figure
clc

% Setting up the parameters
first = 25;
step = 25;
count = numBuildings;
buildingWidth = 20;
minH = 100;
maxH = 200;
xmax = numBuildings * (step + 2);
ymax = 400;

% Generating x and y vectors for the bar chart
stageX = first : step : step * count;
rng('shuffle') % initialize the random number generator with a clock-based seed
stageY = randi([minH, maxH], 1, length(stageX));

% Plotting the chart
w = buildingWidth / step;
bar(stageX, stageY, w)
hold on
axis([0, xmax, 0, ymax])
xlabel('Position (m)');
ylabel('Height (m)');
title('{\itGorillas} in MATLAB');




stage =  struct('x', stageX, ...
               'y', stageY, ...
               'Count', numBuildings, ...
               'buildingWidth', buildingWidth, ...
               'step', step ...
               );
               
end