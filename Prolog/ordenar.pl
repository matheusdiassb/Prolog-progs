maior([M],M).
maior([],_):- false.
maior([X,Y|L1],M) :- X < Y, maior([Y|L1],M).
maior([X,Y|L1],M) :- X >= Y, maior([X|L1],M).

remover(X, [X | T], T).
remover(X, [Y | T], [Y | NT]) :- X \== Y, remover(X, T, NT).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

ordenar([], []).
ordenar(L, R):- maior(L, M),
		remover(M, L, LR),
    		ordenar(LR, RN),
    		concatenar(RN, [M], R).
