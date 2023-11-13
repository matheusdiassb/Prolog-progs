maior([M],M).
maior([],_):- false.
maior([X,Y|L1],M) :- X < Y, maior([Y|L1],M).
maior([X,Y|L1],M) :- X >= Y, maior([X|L1],M).
