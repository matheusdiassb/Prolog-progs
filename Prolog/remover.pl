remover(_, [], []).
remover(X, [X|T1], T2) :- remover(X, T1, T2).
remover(X, [Y|T], [Y|NT]) :- X \== Y, remover(X, T, NT).
