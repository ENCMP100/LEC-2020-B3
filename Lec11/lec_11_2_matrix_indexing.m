% Here are some examples for different methods which can be used to access
% matrix elements


%% Ex. 1: Access the element at 3rd row, 2nd column
% =================================================
mat  = rand(3)

% Method 1: Using row,column numerical indicies
mat(3,2)

% Method 2: Using linear indexing
mat(6)

% Method 3: Using logincal indexing with a linear vector
index = logical([0 0 0 0 0 1 0 0 0])
mat(index)

% Method 4: Using logical indexing (with a mask matrix)
mask = logical([0 0 0; ...
                0 0 0; ...
                0 1 0])
mat(mask)



%% Ex. 2: Using logical indexing to reference matrix elements
% ===========================================================
clear
clc

mat  = randn(5);
disp(mat)

% Assume we need to extract all negative values to 0.
% Let's do this on a copy of the matrix because we want to demo another
% method to do this
mat2 = mat; 

mask = mat2 < 0; % creating a logical indexing matrix which identifies 
                 % negative elements
                 
mat2(mask) = 0; % set all elements identified by the mask to zero
disp(mat2)

% Method 2: you can combine the mask creating and element access to one
% statement as follows. Let's do this on the original "mat"
mat(mat<0) = 0;
disp(mat)


%% Ex. 3. Set all values greater than 0.5 to 100
clear
clc

mat  = randn(5)
mat(mat > 0.5) = 100  % Uses logical indexing in the l-value


%% Ex. 4 Set all values that are outside of -0.5 and 0.5 to 0
clear
clc

mat = randn(5)
mat(mat<-0.5 | mat>0.5) = 0 % NOTE: we use element-by-element OR " 
                            % operator "|" to create the mask


