% Local Functions

% A local function is written in a script or in the file of 
% another function. i.e. the local function is not saved in a
% separate file with the name equals to the function name.
% Local functions can only be called from the file where it is
% defined. 

fullname = concat('John', 'Carter');
fprintf('Full name: %s\n', fullname)



% TO DO: call the above concat function in the command line.
% You will get an error because this LOCAL function is only 
% visible inside this script



% Local function definition
function result = concat(firstName, lastName)

result = [firstName ' ' lastName];

printsomething


end

