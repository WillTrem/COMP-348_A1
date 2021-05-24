% Q8
every-other([], []).
every-other([X], [X]).
every-other([X,_|Xs], [X|Ys]) :- every-other(Xs, Ys).