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
fue_presidente(mmh, X)

*/
