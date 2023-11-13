nelementos([],0).
nelementos([_|L1],S) :- nelementos(L1,S1), S is S1 + 1.
