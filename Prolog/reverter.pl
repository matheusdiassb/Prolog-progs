concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

reverter([],[]).
reverter([H|L1],L2) :- reverter(L1, T), concatenar(T, [H], L2).
