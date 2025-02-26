
% De parte de mi papá:
%   Abuelo paterno: juan_sandoval
%   Abuela paterna: adelina_ramirez
padre(juan_sandoval, everardo_sandoval).
madre(adelina_ramirez, everardo_sandoval).

% De parte de mi mamá:
%   Abuelo materno: pedro_sandoval
%   Abuela materna: juana_ramirez
padre(pedro_sandoval, ana_lopez).
madre(juana_ramirez, ana_lopez).

% Mis padres:
%   Papá: everardo_sandoval
%   Mamá: ana_lopez
padre(everardo_sandoval, edwin_sandoval).
padre(everardo_sandoval, darwin_sandoval).
madre(ana_lopez, edwin_sandoval).
madre(ana_lopez, darwin_sandoval).

% ----------------------------------------------------------------
% Reglas para relaciones familiares
% ----------------------------------------------------------------

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
