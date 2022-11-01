% determinante(numero, genero, persona).
% Singular
determinante([el|S], S, [the|T], T, singular, masculino, tercera).
determinante([un|S], S, [a|T], T, singular, masculino, tercera).
determinante([un|S], S, [an|T], T, singular, masculino, tercera).
determinante([la|S], S, [the|T], T, singular, femenino, tercera).
determinante([una|S], S, [a|T], T, singular, femenino, tercera).
determinante([una|S], S, [an|T], T, singular, femenino, tercera).

%Plural
determinante([los|S], S, [the|T], T, plural, masculino, tercera).
determinante([unos|S], S, [some|T], T, plural, masculino, tercera).
determinante([las|S], S, [the|T], T, plural, femenino, tercera).
determinante([unas|S], S, [some|T], T, plural, femenino, tercera).

% verbo(numero, persona).
% comer
verbo([como|S], S, [eat|T], T, singular, tercera). %yo
verbo([comes|S], S, [eat|T], T, singular, segunda). %tú
verbo([come|S], S, [eats|T], T, singular, tercera). %él/ella
verbo([comen|S], S, [eat|T], T, plural, tercera). %ellas/ellos
verbo([comemos|S], S, [eat|T], T, plural, primera). %nosotros

%caminar
verbo([camino|S], S, [walk|T], T, singular, tercera). %yo
verbo([caminas|S], S, [walk|T], T, singular, segunda). %tú
verbo([camina|S], S, [walks|T], T, singular, tercera). %él/ella
verbo([caminan|S], S, [walk|T], T, plural, tercera). %ellas/ellos
verbo([caminamos|S], S, [walk|T], T, plural, primera). %nosotros

%hablar
verbo([hablo|S], S, [talk|T], T, singular, tercera).  %yo
verbo([hablas|S], S, [talk|T], T, singular, segunda). %tú
verbo([habla|S], S, [talks|T], T, singular, tercera). %él/ella
verbo([hablan|S], S, [talk|T], T, plural, tercera).   %ellas/ellos
verbo([hablamos|S], S, [talk|T], T, plural, primera). %nosotros

%ir
verbo([voy|S], S, [go|T], T, singular, tercera).  %yo
verbo([vas|S], S, [go|T], T, singular, segunda). %tú
verbo([va|S], S, [goes|T], T, singular, tercera). %él/ella
verbo([van|S], S, [go|T], T, plural, tercera).   %ellas/ellos
verbo([vamos|S], S, [go|T], T, plural, primera). %nosotros

%venir
verbo([vengo|S], S, [talk|T], T, singular, tercera).  %yo
verbo([vienes|S], S, [talk|T], T, singular, segunda). %tú
verbo([viene|S], S, [talks|T], T, singular, tercera). %él/ella
verbo([vienen|S], S, [talk|T], T, plural, tercera).   %ellas/ellos
verbo([venimos|S], S, [talk|T], T, plural, primera). %nosotros

%saltar
verbo([salto|S], S, [jump|T], T, singular, tercera).  %yo
verbo([saltas|S], S, [jump|T], T, singular, segunda). %tú
verbo([salta|S], S, [jumps|T], T, singular, tercera). %él/ella
verbo([saltan|S], S, [jump|T], T, plural, tercera).   %ellas/ellos
verbo([saltamos|S], S, [jump|T], T, plural, primera). %nosotros

%bailar
verbo([bailo|S], S, [dance|T], T, singular, tercera).  %yo
verbo([bailas|S], S, [dance|T], T, singular, segunda). %tú
verbo([baila|S], S, [dances|T], T, singular, tercera). %él/ella
verbo([bailan|S], S, [dance|T], T, plural, tercera).   %ellas/ellos
verbo([bailamos|S], S, [dance|T], T, plural, primera). %nosotros

%cantar
verbo([canto|S], S, [sing|T], T, singular, tercera).  %yo
verbo([cantas|S], S, [sing|T], T, singular, segunda). %tú
verbo([canta|S], S, [sings|T], T, singular, tercera). %él/ella
verbo([cantan|S], S, [sing|T], T, plural, tercera).   %ellas/ellos
verbo([cantamos|S], S, [sing|T], T, plural, primera). %nosotros

%correr
verbo([corro|S], S, [run|T], T, singular, tercera).  %yo
verbo([corres|S], S, [run|T], T, singular, segunda). %tú
verbo([corre|S], S, [runs|T], T, singular, tercera). %él/ella
verbo([corren|S], S, [run|T], T, plural, tercera).   %ellas/ellos
verbo([corremos|S], S, [run|T], T, plural, primera). %nosotros

%gritar
verbo([grito|S], S, [scream|T], T, singular, tercera).  %yo
verbo([gritas|S], S, [scream|T], T, singular, segunda). %tú
verbo([grita|S], S, [screams|T], T, singular, tercera). %él/ella
verbo([gritan|S], S, [scream|T], T, plural, tercera).   %ellas/ellos
verbo([gritamos|S], S, [scream|T], T, plural, primera). %nosotros


% nombres(numero, genero, letra).

% Individuos
          % Singular
nombre([hombre|S], S, [man|T], T, singular, masculino, consonante).

nombre([mujer|S], S, [woman|T], T, singular, femenino, consonante).
nombre([persona|S], S, [person|T], T, singular, femenino, consonante).
          %Plural
nombre([hombres|S], S, [men|T], T, plural, masculino, consonante).

nombre([mujeres|S], S, [women|T], T, plural, femenino, consonante).
nombre([personas|S], S, [people|T], T, singular, femenino, consonante).

%Profesiones
          %Singular
nombre([doctor|S], S, [doctor|T], T, singular, masculino, consonante).
nombre([enfermero|S], S, [nurse|T], T, singular, masculino, consonante).
nombre([cirujano|S], S, [surgeon|T], T, singular, masculino, consonante).

nombre([abogado|S], S, [lawyer|T], T, singular, masculino, consonante).
nombre([juez|S], S, [judge|T], T, singular, masculino, consonante).
nombre([secretario|S], S, [secretary|T], T, singular, masculino, consonante).

nombre([director|S], S, [principal|T], T, singular, masculino, consonante).
nombre([profesor|S], S, [teacher|T], T, singular, masculino, consonante).

nombre([presidente|S], S, [president|T], T, singular, masculino, consonante).
nombre([conserje|S], S, [janitor|T], T, singular, masculino, consonante).

nombre([ingeniero|S], S, [engineer|T], T, singular, masculino, consonante).
nombre([programador|S], S, [programmer|T], T, singular, masculino, consonante).

nombre([doctora|S], S, [doctor|T], T, singular, femenino, consonante).
nombre([enfermera|S], S, [nurse|T], T, singular, femenino, consonante).
nombre([cirujana|S], S, [surgeon|T], T, singular, femenino, consonante).

nombre([abogada|S], S, [lawyer|T], T, singular, femenino, consonante).
nombre([jueza|S], S, [judge|T], T, singular, femenino, consonante).
nombre([secretaria|S], S, [secretary|T], T, singular, femenino, consonante).

nombre([directora|S], S, [principal|T], T, singular, masculino, consonante).
nombre([profesora|S], S, [teacher|T], T, singular, femenino, consonante).

nombre([presidenta|S], S, [president|T], T, singular, femenino, consonante).

nombre([ingeniera|S], S, [engineer|T], T, singular, femenino, consonante).
nombre([programadora|S], S, [programmer|T], T, singular, femenino, consonante).

         %Plural
nombre([doctores|S], S, [doctors|T], T, plural, masculino, consonante).
nombre([enfermeros|S], S, [nurses|T], T, plural, masculino, consonante).
nombre([cirujanos|S], S, [surgeons|T], T, plural, masculino, consonante).

nombre([abogados|S], S, [lawyers|T], T, plural, masculino, consonante).
nombre([jueces|S], S, [judges|T], T, plural, masculino, consonante).
nombre([secretarios|S], S, [secretaries|T], T, plural, masculino, consonante).

nombre([directores|S], S, [principals|T], T, plural, masculino, consonante).
nombre([profesores|S], S, [teachers|T], T, plural, masculino, consonante).

nombre([presidentes|S], S, [presidents|T], T, plural, masculino, consonante).
nombre([conserjes|S], S, [janitors|T], T, plural, masculino, consonante).

nombre([ingenieros|S], S, [engineers|T], T, plural, masculino, vocal).
nombre([programadores|S], S, [programmers|T], T, plural, masculino, consonante).

nombre([doctoras|S], S, [doctors|T], T, plural, femenino, consonante).
nombre([enfermeras|S], S, [nurses|T], T, plural, femenino, consonante).
nombre([cirujanas|S], S, [surgeons|T], T, plural, femenino, consonante).

nombre([abogadas|S], S, [lawyers|T], T, plural, femenino, consonante).
nombre([juezas|S], S, [judges|T], T, plural, femenino, consonante).
nombre([secretarias|S], S, [secretaries|T], T, plural, femenino, consonante).

nombre([directoras|S], S, [principals|T], T, plural, masculino, consonante).
nombre([profesoras|S], S, [teachers|T], T, plural, femenino, consonante).

nombre([presidentas|S], S, [presidents|T], T, plural, femenino, consonante).

nombre([ingenieras|S], S, [engineers|T], T, plural, femenino, vocal).
nombre([programadoras|S], S, [programmers|T], T, plural, femenino, consonante).


%Puntos Cardinales
nombre([norte|S], S, [north|T], T, singular, masculino, consonante).
nombre([sur|S], S, [south|T], T, singular, masculino, consonante).
nombre([este|S], S, [east|T], T, singular, masculino, vocal).
nombre([oeste|S], S, [west|T], T, singular, masculino, consonante).

nombre([noreste|S], S, [northeast|T], T, singular, masculino, consonante).
nombre([noroeste|S], S, [northwest|T], T, singular, masculino, consonante).
nombre([sureste|S], S, [southeast|T], T, singular, masculino, consonante).
nombre([suroeste|S], S, [southwest|T], T, singular, masculino, consonante).


%Frutas
          %Singular
nombre([manzana|S], S, [apple|T], T, singular, femenino, vocal).
nombre([pera|S], S, [pear|T], T, singular, femenino, consonante).
nombre([piña|S], S, [pineapple|T], T, singular, femenino, consonante).
nombre([fresa|S], S, [strawberry|T], T, singular, femenino, consonante).
nombre([mora|S], S, [blackberry|T], T, singular, femenino, consonante).
nombre([uva|S], S, [grape|T], T, singular, femenino, consonante).
nombre([sandia|S], S, [watermelon|T], T, singular, femenino, consonante).

nombre([banano|S], S, [banana|T], T, singular, masculino, consonante).
nombre([limon|S], S, [lemon|T], T, singular, masculino, consonante).

          %Plural
nombre([manzanas|S], S, [apples|T], T, plural, femenino, vocal).
nombre([peras|S], S, [pears|T], T, plural, femenino, consonante).
nombre([piñas|S], S, [pineapples|T], T, plural, femenino, consonante).
nombre([fresas|S], S, [strawberries|T], T, plural, femenino, consonante).
nombre([moras|S], S, [blackberries|T], T, plural, femenino, consonante).
nombre([uvas|S], S, [grapes|T], T, plural, femenino, consonante).
nombre([sandias|S], S, [watermelons|T], T, plural, femenino, consonante).

nombre([bananos|S], S, [bananas|T], T, plural, masculino, consonante).
nombre([limones|S], S, [lemons|T], T, plural, masculino, consonante).


%Vehculos
          %Singular
nombre([carro|S], S, [car|T], T, singular, masculino, consonante).
nombre([bote|S], S, [boat|T], T, singular, masculino, consonante).
nombre([barco|S], S, [boat|T], T, singular, masculino, consonante).
nombre([crucero|S], S, [cruise|T], T, singular, masculino, consonante).
nombre([avion|S], S, [plane|T], T, singular, masculino, consonante).
nombre([buque|S], S, [ship|T], T, singular, masculino, consonante).


nombre([bici|S], S, [bike|T], T, singular, femenino, consonante).
nombre([bicicleta|S], S, [bike|T], T, singular, femenino, consonante).
nombre([moto|S], S, [motorcycle|T], T, singular, femenino, consonante).
nombre([motocicleta|S], S, [motorcycle|T], T, singular, femenino, consonante).
nombre([embarcacion|S], S, [ship|T], T, singular, femenino, consonante).


          %Plural
nombre([carros|S], S, [cars|T], T, plural, masculino, consonante).
nombre([botes|S], S, [boats|T], T, plural, masculino, consonante).
nombre([barcos|S], S, [boats|T], T, plural, masculino, consonante).
nombre([cruceros|S], S, [cruises|T], T, plural, masculino, consonante).
nombre([aviones|S], S, [planes|T], T, plural, masculino, consonante).
nombre([buques|S], S, [ships|T], T, plural, masculino, consonante).

nombre([bicis|S], S, [bikes|T], T, plural, femenino, consonante).
nombre([bicicletas|S], S, [bikes|T], T, plural, femenino, consonante).
nombre([motos|S], S, [motorcycles|T], T, plural, femenino, consonante).
nombre([motocicletas|S], S, [motorcycles|T], T, plural, femenino, consonante).


%NÃºmeros
          %Singular
nombre([numero|S], S, [number|T], T, singular, masculino, consonante).
nombre([cero|S], S, [zero|T], T, singular, masculino, consonante).
nombre([uno|S], S, [one|T], T, singular, masculino, vocal).
nombre([dos|S], S, [two|T], T, singular, masculino, consonante).
nombre([tres|S], S, [three|T], T, singular, masculino, consonante).
nombre([cuatro|S], S, [four|T], T, singular, masculino, consonante).
nombre([cinco|S], S, [five|T], T, singular, masculino, consonante).
nombre([seis|S], S, [six|T], T, singular, masculino, consonante).
nombre([siete|S], S, [seven|T], T, singular, masculino, consonante).
nombre([ocho|S], S, [eight|T], T, singular, masculino, vocal).
nombre([nueve|S], S, [nine|T], T, singular, masculino, consonante).
nombre([diez|S], S, [ten|T], T, singular, masculino, consonante).
          %Plural
nombre([numeros|S], S, [numbers|T], T, singular, masculino, consonante).
