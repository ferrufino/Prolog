% Equipo:
% Andres G. Cavazos A01195067
% Gustavo Ferrufino A00812572

/*2.	Programar el predicado multiplos en Prolog que cuente la cantidad de múltiplos de N menores o 
iguales a M (incluyendo a N).*/
multiplos(_,0,0).
multiplos(N,D,M):-
	X is D mod N, Y is D - 1, multiplos(N,Y,W), (X==0-> M is W+1; M is W).
	

/*3.	Programar el predicado digitos en Prolog que obtenga la cantidad de dígitos que tenga un número 
entero no negativo.*/
digitos(0,0).
digitos(N,D):-
	X is N//10, digitos(X,W), D is W+1.