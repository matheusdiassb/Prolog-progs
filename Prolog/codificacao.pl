concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

linearizar([],[]).
linearizar([X|L],LR) :- linearizar(L, LT), concatenar(X,LT,LR). 

contar_elemento(_, [], [], 1).
contar_elemento(X, [Y|L], [Y|L], 1):- X\==Y.
contar_elemento(X, [X|L], NL, C):-
        contar_elemento(X, L, NL, NC),
        C is NC+1.

compactar([],[]).
compactar([X | L], [[C,X] | R]) :- contar_elemento(X, L, NL, C), compactar(NL, R).

gerar_resposta([],[]).
gerar_resposta([A,B|X], R) :- gerar_resposta(X, R1), number_chars(A,N), concatenar(N,[B],M), concatenar(M,R1,R).


codificar(M,R) :- string_chars(M,T1), compactar(T1, T2), linearizar(T2, T3),
		  gerar_resposta(T3,R1), string_chars(R,R1).

is_digit(X) :- atom_length(X,1), X @>= '0', X @=< '9'.

duplicar(0, _, []) :- !.
duplicar(N, C, R):- N1 is N-1, duplicar(N1, C, RT), concatenar([C],RT,R). 

decodificaraux(_,[],[]).
decodificaraux(D, [A|M], R) :- is_digit(A), concatenar(D, [A], R2), decodificaraux(R2, M, R).
decodificaraux(D, [A|M], R) :- not(is_digit(A)), decodificaraux([],M, R2), number_chars(N,D), duplicar(N,A,R1), concatenar(R1,R2,R).

decodificar(M,R) :- string_chars(M,L), decodificaraux([],L,T), string_chars(R,T).
