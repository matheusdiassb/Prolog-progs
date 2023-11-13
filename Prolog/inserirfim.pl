inserirFim(X, [], [X]).
inserirFim(X, [H|L1], [H|L2]) :- inserirFim(X,L1,L2).
