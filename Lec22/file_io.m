%
% Low-level file input/output operations
%
% Reference: Attaway Chapter 9.3
%
% Lecture 22. ENCMP100B3
%


%% Low-level reading from a file

clc

% STEP1: Opening a file for reading. This returns a "file ID"
fileId = fopen('twisters.txt', 'r'); % 'r' represents the read mode

% STEP2: check whether the file reading was successful
if fileId == -1
    error('Failed to open the file for reading')
else
    
    % STEP 3: Keep reading the file line by line until the end- of-file
    % is reached,
    while ~feof(fileId)
        
        % Read next line from the file
        line = fgetl(fileId);
        
        % Do something with the line that was read
        disp(line) 
        
    end
    
    % STEP 4: We are done reading, therefore, close the file
    result = fclose(fileId);
    
    if result ~= 0
        error('Failed to close the file')
    end
end

%% Low-level writing to a file

% let's create some data to be written to a file
names = {'John', 'Elizabeth', 'Kyle', 'Rose'};
ages = [18, 22, 17, 16];

% STEP1: Openning the file for writing
fid = fopen('mydata.txt', 'w'); % 'w' opens the file in "write" mode. 
                                % It overwrites the file if it exists already.
% STEP2: Check whether the file was openned successfully
if fid == -1
    error('Failed to open the file for writing')
end

% STEP3: writing data                                
for i = 1 : length(names)
    fprintf(fid, '%s: %d\n', names{i}, ages(i));
end

% STEP 4: We are done writing, therefore, close the file
result = fclose(fid);

if result ~= 0
    error('Failed to close the file')
end

%% Low-level appending

mat = reshape(1:9, 3, 3);

% Opening the file in "append" mode
fid = fopen('mydata.txt', 'a');
if fid == -1
    error('Failed to open the file for appending');
end

% Writing data
fprintf(fid, '%d %d %d\n', mat');

% Closing the file
if fclose(fid) ~= 0
    error('Failed to close the file')
end

