function stage = setstage(numBuildings)
% SETSTAGE initializes a new stage with the specified number of buildings
% and returns the parameters of the created stage in a structure.
%





stage =  struct('x', [], ...
               'y', [], ...
               'Count', numBuildings, ...
               'buildingWidth', [], ...
               'step', [] ...
               );
               
end