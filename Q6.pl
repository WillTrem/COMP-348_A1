% Q6
% Finite State Machine
% Set facts
start(a).
final(c).
final(d).
final(e).
transition(a,0,b).
transition(a,1,c).
transition(b,0,a).
transition(b,1,d).
transition(c,0,e).
transition(c,1,f).
transition(d,0,e).
transition(d,1,f).
transition(e,0,e).
transition(e,1,f).
transition(f,0,f).
transition(f,1,f).

% The accept rule will take a list as input, and will recursively
% go through the path specified in the list. It goes from one state
% to another until the list is empty.
accept(L) :- start(X), path(X,L).
% Base case
path(S,[]) :- final(S).
% Recursive case
path(S,[H|L]) :- transition(S,H,S1), path(S1,L).




% Q6
% Finite State Machine
% Set facts
start(a).
final(c).
final(d).
final(e).
transition(a,0,b).
transition(a,1,c).
transition(b,0,a).
transition(b,1,d).
transition(c,0,e).
transition(c,1,f).
transition(d,0,e).
transition(d,1,f).
transition(e,0,e).
transition(e,1,f).
transition(f,0,f).
transition(f,1,f).

% The accept rule will take a list as input, and will recursively
% go through the path specified in the list. It goes from one state
% to another until the list is empty.
% Practice query would be ?- accept([0,1,0,1]) with n-length list of 0s and 1s.
accept(L) :- start(X), path(X,L).
% Base case
path(S,[]) :- final(S).
% Recursive case
path(S,[H|L]) :- transition(S,H,S1), path(S1,L).


