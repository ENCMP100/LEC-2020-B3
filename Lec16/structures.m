% Structures
% Chapter 8.2

clear
clc

% Creating a structure with different fields to store 
% data of a person
employee = struct('FirstName', 'James', 'LastName', 'Beck', ...
                'Age', 27, 'Street', '123 40 Ave', ...
                'City', 'Edmonton', 'Province', 'AB');
    
            
whos

% Displaying the whole structure
disp(employee)

% Accessing/displaying only one field in 
% the structure using the dot operator
disp(employee.LastName)

% Modifying a particular field
employee.Age = 32;
disp(employee)

% Adding a new field using the dot operator.
% This, however, is not very efficient because 
% it "grows" the structure.
employee.Country = 'Canada';
disp(employee)

% Removing a field from the structure
empl = rmfield(employee, 'Age');

% Displaying the original structure passed on to remfield
% Note that the "Age" field has not been removed from it.
disp(employee)


% Displaying the result returned by rmfield. 
% Note that it has no "Age" field.
disp(empl)

% To remove the field and update the original, we should
% assign the result of rmfield to the .
employee = rmfield(employee, 'Age');

%% Structure-related functions

% ISFILED - check whether a given field exists in a structure.
isfield(employee, 'FirstName')
isfield(employee, 'Salary')

% ISSTRUCT - checks whether a variable is a structure
isstruct(employee)

mat = rand(2);
isstruct(mat)

%% Preallocation

clear
clc

person = struct('First_Name', '', ...
                'Last_Name', '', ...
                'Address', '', ...
                'Salary', [], ...
                'Age', 0);
            
            
% preallocating a 100 element array of person structures
personArray = repmat(person, 1, 100);
