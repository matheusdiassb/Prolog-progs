soma([X],X).
soma([],_):-false.
soma([X|L1],S):-soma(L1,S1), S is S1 + X. 

nelementos([],0).
nelementos([_|L1],S) :- nelementos(L1,S1), S is S1 + 1.

medio(X,M):- soma(X,S),nelementos(X,N),  M is S/N.
