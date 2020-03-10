function player = setplayer(playerNumber)
% SETPLAYER sets a player on a builing that is randomly selected between
% the minBuildingIndex and maxBuildingIndex. Returns the player as a
% structure.





player = struct('x', [], ...
                'y', [], ...
                'playerNum', playerNumber, ...
                'buildingIndex', [] ...
                );
end