% GORILLAS:This is a MATLAB implementation of a simplified
% version of the game Gorillas which was first introduced
% with MS-DOS.
%
% This project was initially adapted to the ENCMP course by Dr. Dileepan
% Joseph.
%
% This code is released under MIT License
%
% Jan - April, 2020

%{
    Requirements for Version 3
    ==========================

    1. Version 3 must fulfil the functional requirements of version 2.

    2. In addition, this version must refactor code and use functions and
       structures to organized the progam code such that the main
       gorillas.m file controls the overall functionality and the control
       for while code related to specific functional blocks must be
       implemented as seprate functions.

    Requirements of Version 2
    =========================

    1. The stage must be set and the 2 players must be placed similar to
       the version 1.

    2. The player 1 must played by a human (you) and the player 2 must be
       played by the computer (Kong).

    3. You and Kong must keep playing alternatively until one of the
       following conditions is met:
        (a) Banana hits the top of the oposit player's building. In this
            case, the player who threw the banana wins.
        (b) You enter a velocity of 0, indicating you want to quit from
            the battle.
    
    4. The angle and velocity of your throw must be taken interactively.

    5. The angle and velocity of Kong's throw must be randomly generated.

    6. The angles must be integer values  between 0 and 90 degrees and the
       velocities must be integer values between 1 and 100 m/s.

    7. Trajectory of a throw must stop at the first building it hits.

    8. If a player wins, a message should be printed identifying the
       winner. If the game ended because you quit, it should be printed
       using an appropriate message.
%}

%% Code from Version 1

% Reset the envoronment
% ---------------------

clf % clear previously plotted figure
clc
clear

% Setting up the parameters
first = 25;
step = 25;
count = 15;
buildingWidth = 20;
minH = 100;
maxH = 200;
xmax = 400;
ymax = 400;

% Generating x and y vectors for the bar chart
stageX = first : step : step * count;
rng('shuffle') % initialize the random number generator with a clock-based seed
stageY = randi([minH, maxH], 1, length(stageX));

% Plotting the chart
w = buildingWidth / step;
bar(stageX, stageY, w)
hold on
axis([0, xmax, 0, ymax])
xlabel('Position (m)');
ylabel('Height (m)');
title('{\itGorillas} in MATLAB');


% Placing players (gorillas)

% Placing player 1
index1 = randi([1, 7]);
p1x = stageX(index1);
p1y = stageY(index1) + 10;
plot(p1x, p1y, 'p', 'MarkerSize', 20)

% Placing player 2
index2 = randi([8, length(stageX)]);
p2x = stageX(index2);
p2y = stageY(index2) + 10;
plot(p2x, p2y, 'p', 'MarkerSize', 20)

figure(gcf) % bring the current figure to focus

%% Updated Code for Version 2

activePlayerId = 1; % Start with player 1 (human user)
winner = ''; % Set this to the winner ('You' or 'Kong; when one of you win
quit = false; % Set this to true the user inputs o for velocity

stage =  struct('x', stageX, ...
                'y', stageY, ...
                'Count', count, ...
                'buildingWidth', buildingWidth, ...
                'step', step ...
                );
p1 = struct('x', p1x, 'y', p1y, 'Id', 1, 'buildingId', index1);
p2 = struct('x', p2x, 'y', p2y, 'Id', 2, 'buildingId', index2);

while isempty(winner) && ~quit
    if activePlayerId == 1
        
        % You (Player 1) shoor a banana
        
        % Taking inputs
        disp('You (facing east):');
        a = round(input('    Angle (degrees)? '));
        u = round(input('    Velocity (m/s)? '));
        
        if u == 0
            quit = true;
        else          
            isWon = shoot(stage, p1, p2, a, u);
            
            if isWon
                winner = 'You';
            end
        end
        
        activePlayerId = 2; % turn the next iteration to player 2
    else
        
        % Knog (Player 2) fires a banana
        disp('Kong (facing west):');
        a = randi(90);
        fprintf('    Angle: %d\n', a)
        a = 180 - a;
        u = randi([1 100]);
        fprintf('    Velocity: %d\n', u)
             
        isWon = shoot(stage, p2, p1, a, u);
            
        if isWon
            winner = 'Kong';
        end
       
        activePlayerId = 1; % turn the next iteration to player 1
    end
    fprintf('\n')
end

if ~isempty(winner)
    fprintf('%s Won!\n', winner)
else
    disp('Come again to play later.')
end
