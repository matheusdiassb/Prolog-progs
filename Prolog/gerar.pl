gerar(Y,Y,[Y]).
gerar(X, Y, [X | L1]) :- X1 is X+1, gerar(X1, Y, L1). 


