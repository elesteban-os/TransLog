% De ingles a espanol el genero importa.

% General.
oracionEnEs(S0, S, T0, T):-
    sintagma_nominal(S0, S1, T0, T1, Num, Gen, Per),
    sintagma_verbal(S1, S, T1, T, Num2, Gen2, Per2).

% Nombres propios
oracionEnEs(S0, S, T0, T):-
    nombrePropio(S0, S1, T0, T1),
    sintagma_verbal(S1, S, T1, T, Num2, Gen2, Per2).


% ----------------------------------------

% De espanol a ingles el genero no importa

% General
oracionEsEn(S0, S, T0, T):-
    sintagma_nominal(S0, S1, T0, T1, Num, _, Per),
    sintagma_verbal(S1, S, T1, T, Num, _, Per).

% Frases predeterminadas.
oracionEsEn(S0, S, T0, T):-
    frase(S0, S, T0, T), !.

% Solo saludos o despedidas **
oracionEsEn(S0, S, T0, T):-
    frase(S0, S, T0, T), !.

% Nombres propios
oracionEsEn(S0, S, T0, T):-
    nombrePropio(S0, S1, T0, T1),
    sintagma_verbal(S1, S, T1, T, _, _, _).

% Saludos **
oracionEsEn(S0, S, T0, T):-
    nombrePropio(S0, S1, T0, T1),
    sintagma_verbal(S1, S, T1, T, _, _, _).


sintagma_nominal(S0, S, T0, T, Num, Gen, Per):-
    determinante(S0, S1, T0, T1, Num, Gen, Per),
    nombre(S1, S, T1, T, Num, Gen).

sintagma_verbal(S0, S, T0, T, Num, Gen, Per):-
    verbo(S0, S1, T0, T1, Num, Per),
    sintagma_nominal(S1, S, T1, T, Num, Gen, Per).

% Para nombres propios
nombrePropio([X|S], S, [X|T], T).

% frases predeterminadas
frase([como, esta|S], S, [how, are, you|T], T).


% saludo/despedidas
saludo([hola|S], S, [hello|T], T).

% determinante(numero, genero, persona).
determinante([el|S], S, [the|T], T, singular, masculino, tercera).
determinante([la|S], S, [the|T], T, singular, femenino, tercera).

% nombre(numero, genero).
nombre([hombre|S], S, [man|T], T, singular, masculino).
nombre([mujer|S], S, [woman|T], T, singular, femenino).
nombre([manzana|S], S, [apple|T], T, singular, femenino).

% verbo(numero, persona).
verbo([come|S], S, [eats|T], T, singular, tercera).

