% Lecture 6 Inputs and Outputs
% Chapter 3.3 Attaway



% Inputting scalars and printing them
% ===================================
val = input('Enter a numeric value: ');

% Using disp to print just the value of the variable val
disp(val)

% Using fprintf  to print the value in various forms
fprintf('%d\n', val) % print just the value in interger format and go to next line
fprintf('Value in integer format:%d\n', val)
fprintf('Value in floating point format with default number of decimal places:%f\n', val)
fprintf('Floating point with 2 decimal places:%.2f\n', val)
fprintf('Float with 2 decimal places:%8.2f(printed in a field of 8 characters, right aligned)\n', val)
fprintf('Float with 2 decimal places:%-8.2f(printed in a field of 8 characters, left aligned)\n', val)

% Inputting character-arrays (i.e. a string of characters) and displaying them
% ============================================================================
val = input('Enter any text: ', 's');

% Using disp to display just the value
disp(val)

% Using fprintf to display the value as a character-array 
% (a.k.a string of characters) in various forms
fprintf('%s\n', val); % just display the value and a new-line character
fprintf('You entered:%s\n', va)
fprintf('You entered:%10s(printd in a field of 10 characters, right aligned)\n', val)
fprintf('You entered:%-10s(printd in a field of 10 characters, left aligned)\n', val)


% Printing vectors
% ================
vec = 1:5;
disp(vec) % printing just the value

fprintf('%d ', vec) % prints all elements in one line
fprintf('%d\n', vec) % print all elements, each in a new line

fprintf('%d %d\n', vec)

% Printing matricies
% ==================
mat = reshape(1:12, 3, 4)'; % Creting a matrix by reshaping a vector and transposing it

disp(mat) % Printing just the value

fprintf('%d ', mat) % takes elements column by column and prints in one line

fprintf('%d \n', mat) % takes elements column by column and prints value one per line

fprintf('%d %d\n', mat) % takes elements column by column and prints two per line

fprintf('%d %d %d\n', mat) % takes elements column by column and prints two per line

% NOTE: To print values row by row, we should pass the transpose to fprintf
fprintf('%d %d %d\n', mat')

% let's change the above to display each value in a width of 2 characters
fprintf('%2d %2d %2d\n', mat')


