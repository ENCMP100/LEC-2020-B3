function player = setplayer(stage, playerId)
% SETPLAYER sets a player on a builing that is randomly selected bars
% t. Returns the player as a
% structure.

if playerId == 1
    index = randi([1, floor(stage.Count/2)]);
elseif playerId == 2
    index = randi([floor(stage.Count/2) + 1, stage.Count]);
else
    error('PlayerId must be 1 or 2');
end

px = stage.x(index);
py = stage.y(index) + 10;
plot(px, py, 'p', 'MarkerSize', 20)




player = struct('x', px, ...
                'y', py, ...
                'Id', playerId, ...
                'buildingId', index ...
                );
            
end