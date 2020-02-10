% RUNSUM prompts to input a number repeatedly and computes the
% sum of all numbers entered. Entering an empty input will terminate the program


clc
fprintf('Welcome to RUNSUM.\n')
fprintf('Just hit enter to exit.\n\n')

sum = 0;
val = input('First number: ');

while ~isempty(val)
    % add the current value to sum
    sum = sum + val; 
    
    % display the sum
    fprintf('Sum: %0.2f\n', sum)
    
    % prompt to input the next value
    val = input('Next number: ');
end

% display a message just before exit.
fprintf('See you later!\n')
