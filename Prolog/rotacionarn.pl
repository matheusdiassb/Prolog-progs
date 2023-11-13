concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

rotacionar([X|L],R):- concatenar(L, [X] ,R).

rotacionarn(0,R,R).
rotacionarn(C,L,R) :- C > 0, 
		      CN is C-1, rotacionar(L,X), rotacionarn(CN, X, R).
