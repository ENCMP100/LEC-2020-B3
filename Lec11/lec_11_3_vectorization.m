% Vectorization and Timing
% Chapter 5.4 and 5.5

%% Ex. 1: Accessing elements which meets a criteria

% Setting all elements of a matrix whos values are 5 and 8 (inclusive)
% to 100

clear
clc

mat = randi(9, 5);
matBackup = mat; % Create a copy of the matrix because we are demonstrating 
                 % several methods

disp('Original matrix')
disp(mat)

% non-vectorized code
disp('Non-vectorized method (using a loop)')
[rows,cols] = size(mat);
for i = 1:rows
    for j = 1:cols
        if mat(i,j) >= 5 && mat(i,j) <= 8
            mat(i,j) = 100;
        end
    end
end
disp(mat)

% vectorized code (longer form)
disp('Using non-compact vectorized method')
mat = matBackup; % restore the original matrix

mask1 = mat>=5;
mask2 = mat<=8;
mask = mask1 & mask2; % note the element-by-element AND operator "&"
mat(mask) = 100; % use logical indexing to set the element values

disp(mat)

% vectorized code (compact form)
disp('Using compact vectorized method')
mat = matBackup; % restore the original matrix

mat(mat>=5 & mat<=8) = 100;

disp(mat)

%% Ex. 2: Counting the number of positive elements
clear
clc

mat = randn(3);
disp(mat)

% non-vectorized code
disp('Non-vectorized method (using a loop)')
[rows,cols] = size(mat);
count = 0;
tic % Initialize a timer to measure the execution time
for i = 1:rows
    for j = 1:cols
        if mat(i,j) > 0
            count = count + 1;
        end
    end
end
toc % Reports elapsed time the last "tic"
fprintf('Count: %d\n\n', count)

% vectorized code method 1
disp('Vectorized method 1')
tic
count = sum(sum(mat>0));
toc
fprintf('Count: %d\n\n', count)

% vectorized code method 2
disp('Vectorized method 2')
tic
count = sum(mat(:)>0);
toc
fprintf('Count: %d\n\n', count)

%% Ex. 3: Extracting a portion of a vector up to a given "marker"

clear
clc

% Assume, we need to extract the first portion of the following data vector
% upto (but excluding) the first occurrence of -99.
data = [21 90 67 47 91 11 74 -99 73 56 19 30 14 22 -99 89 8 25 6 44 2 89];

% Non-vectorized form (i.e. using a loop)
% =======================================
i = 1;
result = zeros(numel(data)); % Allocate up to the full length of the data 
                             % vector because in practice we might not know
                             % where the "marker" will locate

tic                            
while i <= numel(data) && data(i) ~= -99
    result(i) = data(i); % copy the i-th element to the result
    i = i + 1; % increment the index i by 1
end
toc

% Let's now remove all elements on the result vector from i-th element to
% the end because they are empty.
result = result(1:i-1);

disp('Non-vecotroized result:')
disp(result);

% Vectorized form (i.e. with no loop)
% ===================================
tic
markerIndicies = find(data == -99);
result = data(1 : markerIndicies(1)-1);
toc
disp('Vecotroized result:')
disp(result);
