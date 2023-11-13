contar_elemento(_, [], [], 1).
contar_elemento(X, [Y|L], [Y|L], 1):- X\==Y.
contar_elemento(X, [X|L], NL, C):-
        contar_elemento(X, L, NL, NC),
        C is NC+1.

compactar([],[]).
compactar([X | L], [[C,X] | R]) :- contar_elemento(X, L, NL, C), compactar(NL, R).
