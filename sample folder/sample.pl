% Define a predicate to solve the Tower of Hanoi problem.
% Parameters:
%   - N: Number of disks
%   - From: Source peg
%   - To: Destination peg
%   - Via: Intermediate peg

move(N, X, Y, Z) :-
    N > 1,
    M is N - 1,
    move(M, X, Z, Y),
    move(1, X,Y,_),
    move(M, Z, Y, X).

% Define a predicate to print the move of a disk from one peg to another.
% Parameters:
%   - From: Source peg
%   - To: Destination peg
move(1, X,Y,_) :-
    write('Move top disk from '),
    write(X),
    write(' to '),
    write(Y),
    nl.














% Example usage:
% Query: hanoi(3, left, right, middle).
% Output:
% Move a disk from left to right
% Move a disk from left to middle
% Move a disk from right to middle
% Move a disk from left to right
% Move a disk from middle to left
% Move a disk from middle to right
% Move a disk from left to right
