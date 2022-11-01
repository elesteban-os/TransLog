
% Llamada a la traduccion
oracionEnEs(O, T):-
    oracionEnEs(T, [], O, []), !.

% Caso de parada
oracionEnEs([], [], [], []).

oracionEnEs(S0, S, T0, T):-
    frase(S0, S1, T0, T1),
    oracionEnEs(S1, S, T1, T), !.

% Reconocimiento de frases y seguimiento
oracionEnEs(S0, S, T0, T):-
    (frase(S0, S1, T0, T1), !;
     saludo(S0, S1, T0, T1), !;
     despedida(S0, S1, T0, T1), !),

    oracionEnEs(S1, S, T1, T), !.

% Reconocimiento de sintagmas y seguimiento
oracionEnEs(S0, S, T0, T):-
    sintagma_nominal(S0, S1, T0, T1, Num, Gen, Per),
    sintagma_verbal(S1, S2, T1, T2, Num2, Gen2, Per2),
    oracionEnEs(S2, S, T2, T), !.

oracionEnEs(S0, S, T0, T):-
    sintagma_nominal(S0, S1, T0, T1, Num, Gen, Per),
    oracionEnEs(S1, S, T1, T), !.


% Determinante y nombre
sintagma_nominal(S0, S, T0, T, Num, Gen, Per):-
    determinante(S0, S1, T0, T1, Num, Gen, Per),
    nombre(S1, S, T1, T, Num, Gen).

% Solo nombre
sintagma_nominal(S0, S, T0, T, Num, Gen, _):-
    nombre(S0, S, T0, T, Num, Gen), !.

% Solo nombre propio
sintagma_nominal(S0, S, T0, T, _, _, _):-
    nombre(S0, S, T0, T, propio, propio), !.

% Verbo y sintagma nominal
sintagma_verbal(S0, S, T0, T, Num, Gen, Per):-
    verbo(S0, S1, T0, T1, Num, Per),
    sintagma_nominal(S1, S, T1, T, Num, Gen, Per).

% Solo verbo
sintagma_verbal(S0, S, T0, T, Num, _, Per):-
    verbo(S0, S, T0, T, Num, Per).

% saludo/despedidas
saludo([hola|S], S, [hello|T], T).
despedida([adios|S], S, [bye|T], T).

% frases predeterminadas
frase([como, estas|S], S, [how, are, you|T], T).

% determinante(numero, genero, persona).
determinante([el|S], S, [the|T], T, singular, masculino, tercera).
determinante([la|S], S, [the|T], T, singular, femenino, tercera).
determinante([al|S], S, [to, the|T], T, singular, femenino, tercera).
determinante([a|S], S, [to|T], T, singular, femenino, tercera).



% nombre(numero, genero).
nombre([hombre|S], S, [man|T], T, singular, masculino).
nombre([mujer|S], S, [woman|T], T, singular, femenino).
nombre([manzana|S], S, [apple|T], T, singular, femenino).
nombre([baño|S], S, [bathroom|T], T, singular, femenino).

nombre([X|S], S, [X|T], T, propio, propio).

% verbo(numero, persona).
verbo([come|S], S, [eats|T], T, singular, tercera).
verbo([voy|S], S, [go|T], T, singular, tercera).


