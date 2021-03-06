clear;

task = 'logo';
%task = 'right_angle';
%task = 'learn_and_teach';

%% read the input file into a matrix. 0 means . and 1 means #
map = readInputFile([task,'.in']);

%% look for squares - store command and replace in the map with -1
[commands, map] = lookForSquares(map);

%% look for lines - store command and replace in the map with -1
[newCommands, map] = lookForLines(map);
commands = horzcat(commands, newCommands);

%% print output file
printOutputFile(commands, [task,'.out']);