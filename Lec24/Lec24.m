% Review
%
% Lec B3
% April 02, 2020
%

%% Basic data types (classes)
doubleScalar = 10.5;
characterScalar = 'H';
logicalScalar = true;

% Converting from one type to another

dVal = double('H') % returns the ascii value of the character
cVal = char(71) % returns the character represented by the ascii value 71


% Creating vectors
v1 = 1:5
v2 = 1:2:10
v3 = linspace(1,10)
v4 = logspace(1,3)


%% Matrix functions
m = [1  2  3
    4  5  6
    7  8  9
    10 11 12]

% rearanging m to new dimensions by taking values column-wise
reshape(m, 6,2)

% rotating counterclockwise
rot90(m)

% rotating clockwise
rot90(m, -1)

% flipping
flipud(m)
fliplr(m)

% column-wise sum
sum(m)


%% Cell Arrays
cellArray = {12, [1:4], 'Hello', rand(3)}
vec = cellArray{2}
cellArray{3} = "Hello World"

% Stuctures
person = struct('FirstName', 'Winston', ...
    'LastName', 'Churchill', ...
    'DOB', 'November 30, 1874', ...
    'Nationality', 'British');

disp(person.FirstName)
person.LastName = 'Spencer-Churchill'

rmfield(person, 'DOB')
disp(person)


%% Selection: IF/ELSEIF/ELSE

clc
val = randi(100)

if val < 25
    disp('small')
elseif val < 75
    disp('medium')
else
    disp('large')
end

%% Selection: switch/case/otherwise

day = input('Enter the day number (Monday = 1, etc): ');
if day < 1 || day > 7
    error('Invalid day number')
end

switch day
    case 1
        disp('It''s the first day of the week')
    case {6, 7}
        disp('It''s weekend')
    otherwise
        disp('Yet another week day')
end

%% Repetition: FOR

for i = 1:5
    fprintf('%d: Hello\n', i)
end

%% Repetition: WHILE
clear
clc

n = 0;
while n ~= 3
    n = randi(5);
    fprintf('Current number = %d\n', n);
end


%% Functions
rad = 4;
[area, circ] = circleinfo(rad)
greet('Shrek')

%% Low-level File Inputs

clear
clc

fileId = fopen('twisters.txt', 'r'); % 'r' represents the read mode
if fileId == -1
    error('Failed to open the file for reading')
end

while ~feof(fileId)
    line = fgetl(fileId);
    disp(line)    
end

if fclose(fileId) ~= 0
    error('Failed to close the file')
end

%% Low-level File Outputs

names = {'John', 'Elizabeth', 'Kyle', 'Rose'};
ages = [18, 22, 17, 16];

fid = fopen('mydata.txt', 'w');

if fid == -1
    error('Failed to open the file for writing')
end

for i = 1 : length(names)
    fprintf(fid, '%s: %d\n', names{i}, ages(i));
end

if fclose(fid) ~= 0
    error('Failed to close the file')
end