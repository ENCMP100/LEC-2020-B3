function isWon = shoot(stage, shooter, target, angle, velocity)
% SHOOT calculates the trajectory of the banana thrown by the specified
% activePlayer and displays it in slow motion. For the player #1, this
% function throws the banana in the east direction and for the player #1 it
% throws it in the west direction. The trajectory ends when the banana hits
% on a building (or when it goes beyond the buildings). The function
% returns the index of the building being hit by the banana (or empty if
% the banana does not hit on any building.


% Computing the trajectory
x0 = shooter.x;
y0 = shooter.y;

% Finding the domain (x values) depending on which player is playing
if shooter.Id == 1
    x = x0 : max(stage.x) + stage.buildingWidth/2;
else
    x = x0 : -1 : 0;
end

% Calculating the full trajectory y values without limiting it to the first
% building being hit
a = angle;
u = velocity;
y = y0 + tand(a) * (x - x0) - 9.81 * (x - x0).^2/(2 * u^2 * (cosd(a))^2);

% Limiting the trajectory to the first hit of the building, if any
[hitIndex, x, y] = findHitBuildingId(stage, shooter, x, y);

isWon = ~isempty(hitIndex) && ...
    hitIndex == target.buildingId && ...
    stage.x(hitIndex) - stage.buildingWidth/2 < x(end) && ...
    stage.x(hitIndex) + stage.buildingWidth/2 > x(end);

figure(gcf) % bring the current figure to focus
comet(x, y)

end



function [hitIndex, trajX, trajY] = findHitBuildingId(stage, player, x, y)

hitIndex = [];

if x(1) < x(end)
    % throwing towards the west direction
    i = player.buildingId;
    
    while i <= length(stage.x) && isempty(hitIndex)
        
        entranceWallFaceX = stage.x(i) - stage.buildingWidth/2;
        exitWallFaceX = stage.x(i) + stage.buildingWidth/2;
        
        mask = x >= entranceWallFaceX & ...
               x <= exitWallFaceX & ...
               y <= stage.y(i);
           
        mask = find(mask);
        
        if ~isempty(mask)
            hitIndex = i;
            trajX = x(1:mask(1));
            trajY = y(1:mask(1));
        end
        i = i + 1;
    end
else
    % throwing towards the east direction
    i = player.buildingId;
    while i > 0 && isempty(hitIndex)
        
        entranceWallFaceX = stage.x(i) + stage.buildingWidth/2;
        exitWallFaceX = stage.x(i) - stage.buildingWidth/2;
        
        mask = x <= entranceWallFaceX & ...
               x >= exitWallFaceX & ...
               y <= stage.y(i);
           
        mask = find(mask);
        
        if ~isempty(mask)
            hitIndex = i;
            trajX = x(1:mask(1));
            trajY = y(1:mask(1));
        end
        i = i - 1;
    end
end

if isempty(hitIndex)
    trajX = x;
    trajY = y;
end
end