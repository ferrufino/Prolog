:- initialization
   format('Welcome to Ferrufinos family!~n').


/*
A00812572 Gustavo Ferrufino
A Andres Cavazos
*/


/*Ferrufinos */
padre(jaime, raul).
padre(jaime, gustavo).
padre(jaime, fernando).

padre(fidelia, raul).
padre(fidelia, gustavo).
padre(fidelia, fernando).

padre(fernando, tatiana).
padre(fernando, cecilia).
padre(fernando, beti).

padre(mechi, tatiana).
padre(mechi, cecilia).
padre(mechi, beti).


padre(monica, natalia).
padre(monica, pablo).

padre(gustavo, natalia).
padre(gustavo, pablo).

padre(raul, giorgo).
padre(raul, vanessa).
padre(raul, michelle).



/*De La Fuente*/
padre(carlos, romulo).
padre(carlos, veronica).
padre(carlos, carolina).
padre(carlos, susana).

padre(elena,romulo).
padre(elena, veronica).
padre(elena, carolina).
padre(elena, susana).

padre(romulo, ivan).
padre(romulo, daniel).
padre(romulo, mariana).

padre(ines, ivan).
padre(ines, daniel).
padre(ines, mariana).

padre(veronica, giorgo).
padre(veronica, vanessa).
padre(veronica, michelle).

padre(carolina, cesar).
padre(carloina, elisa).



abuelo(G, N):-
 padre(P, N), padre(G, P).
tio(T, S):-
 padre(P, S), padre(A, P), padre(A, T), P \==T.
hijo(H, P):-
 padre(P, H).
hermano(H, B):-
 padre(P, H), padre(P, B), H \== B.
nieto(N, A):-
 padre(A, P), padre(P, N).
sobrino(S, T):-
 padre(A, T), padre(A, P), padre(P, S), T\==P.
primo(S, C):-
 padre(A, P), padre(A, T), padre(P, S), padre(T, C), T \== P.



