% This simple script prompts for the total daily sales of computers and
% their sevice plans and displays apprpriate messages using
% nested if/else statements.

clc

computerSales = input('Today''s revenue from computer sales : $');
servicePlanSales = input('Today''s revenue from service plans : $');

fprintf('\n=================================\n');
if computerSales < 50000
    disp('We should sell better tomorrow')
else
    fprintf('Today''s sales are good: %d!\n', computerSales)
    if servicePlanSales < 10000
        disp('Work hard on service plans tomorrow though')
    else
        fprintf('Good money from service plans too: %d!\n', servicePlanSales)
    end
end
fprintf('\n=================================\n');
