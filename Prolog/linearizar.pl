concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

linearizar([L],L).
linearizar([X,Y|L1],L) :- concatenar(X,Y,LN), linearizar([LN | L1],L).
