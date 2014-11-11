/*programa P */

p(a).
p(X):- q(X), r(X).
p(X):- u(X).
q(X) :- s(X).
r(a).
r(b).
s(a).
s(b).
s(c).
u(d).
/* test with  p(X). */

/* 
equals =:=
diferente =\=
<
>
=<
>=
*/

/*
con el ejemplo de goberno de presidentes 
probar
fue_presidente(mmh, 1985)
true
fue_presidente(mmh, X) esta noo puede porque ocupo saber el año
fue_presidente(X,1985) esta si puede porque tiene el año y apartir de eso saca los nombres
*/

factorial(0, 1).
factorial(N, R):-
    X is N-1,
    factorial(X, W),
    R is N*W.

/*
esto esta mal, ya que no se puede anidar operaciones
producto(X,Y, W+Y) :- X>0, producto(X-1, Y, W).
tambien no se puede por x-1
producto(X,Y,Z) :- X>0, producto(X-1,Y,W), Z is W+Y.
este escenario tambien esta mal ya que X is X-1 no tiene sentido al 5 no ser igual a 4
producto(X,Y,Z) :- X>0, X is X-1, producto(X,Y,W), Z is W+Y.
*/

producto(0,X,0).
producto(X,Y,Z) :- 
 X>0, 
 N is X-1, 
 producto(N,Y,W), 
 Z is W+Y.
