function player = setplayer(playerId)
% SETPLAYER sets a player on a builing that is randomly selected between
% the minBuildingIndex and maxBuildingIndex. Returns the player as a
% structure.





player = struct('x', [], ...
                'y', [], ...
                'Id', playerId, ...
                'buildingId', [] ...
                );
end