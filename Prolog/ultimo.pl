ultimo([X], X).
ultimo([_|L1], X) :- ultimo(L1, X).
