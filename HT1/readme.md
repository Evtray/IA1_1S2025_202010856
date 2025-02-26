# HT1 - 202010856

## REGLAS

% Hermano/a: Dos individuos son hermanos si comparten ambos padres
hermano(X, Y) :-
    padre(P, X), padre(P, Y),
    madre(M, X), madre(M, Y),
    X \= Y.

% Abuelo: X es abuelo de Y si X es padre de un progenitor de Y
abuelo(X, Y) :-
    padre(X, P),
    (padre(P, Y) ; madre(P, Y)).

% Abuela: X es abuela de Y si X es madre de un progenitor de Y
abuela(X, Y) :-
    madre(X, P),
    (padre(P, Y) ; madre(P, Y)).


## CONSULTA 1
<image src="consulta1.png" alt="consulta">


## CONSULTA 2
<image src="consulta2.png" alt="consulta">

## CONSULTA 3
<image src="consulta3.png" alt="consulta">

## CONSULTA 4
<image src="consulta4.png" alt="consulta">
