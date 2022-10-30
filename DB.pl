% determinante(numero, genero, persona).
% Singular
determinante([el|S], S, [the|T], T, singular, masculino, tercera).
determinante([la|S], S, [the|T], T, singular, femenino, tercera).
%Plural
determinante([los|S], S, [the|T], T, plural, masculino, tercera).
determinante([las|S], S, [the|T], T, plural, femenino, tercera).


% determinante(numero, genero).

%Individuos
          %Singular
nombre([hombre|S], S, [man|T], T, singular, masculino).

nombre([mujer|S], S, [woman|T], T, singular, femenino).
nombre([persona|S], S, [person|T], T, singular, femenino).
          %Plural
nombre([hombres|S], S, [men|T], T, plural, masculino).

nombre([mujeres|S], S, [women|T], T, plural, femenino).
nombre([personas|S], S, [people|T], T, singular, femenino).


%Frutas
          %Singular
nombre([manzana|S], S, [apple|T], T, singular, femenino).
nombre([pera|S], S, [pear|T], T, singular, femenino).
nombre([piña|S], S, [pineapple|T], T, singular, femenino).
nombre([fresa|S], S, [strawberry|T], T, singular, femenino).
nombre([mora|S], S, [blackberry|T], T, singular, femenino).
nombre([uva|S], S, [grape|T], T, singular, femenino).
nombre([sandia|S], S, [watermelon|T], T, singular, femenino).

nombre([banano|S], S, [banana|T], T, singular, masculino).
nombre([limon|S], S, [lemon|T], T, singular, masculino).

          %Plural
nombre([manzanas|S], S, [apples|T], T, plural, femenino).
nombre([peras|S], S, [pears|T], T, plural, femenino).
nombre([piñas|S], S, [pineapples|T], T, plural, femenino).
nombre([fresas|S], S, [strawberries|T], T, plural, femenino).
nombre([moras|S], S, [blackberries|T], T, plural, femenino).
nombre([uvas|S], S, [grapes|T], T, plural, femenino).
nombre([sandias|S], S, [watermelons|T], T, plural, femenino).

nombre([bananos|S], S, [bananas|T], T, plural, masculino).
nombre([limones|S], S, [lemons|T], T, plural, masculino).


%Vehículos
          %Singular
nombre([carro|S], S, [car|T], T, singular, masculino).
nombre([bote|S], S, [boat|T], T, singular, masculino).
nombre([barco|S], S, [boat|T], T, singular, masculino).
nombre([crucero|S], S, [cruise|T], T, singular, masculino).
nombre([avion|S], S, [plane|T], T, singular, masculino).
nombre([buque|S], S, [ship|T], T, singular, masculino).

nombre([bici|S], S, [bike|T], T, singular, femenino).
nombre([bicicleta|S], S, [bike|T], T, singular, femenino).
nombre([moto|S], S, [motorcycle|T], T, singular, femenino).
nombre([motocicleta|S], S, [motorcycle|T], T, singular, femenino).


          %Plural
nombre([carros|S], S, [cars|T], T, plural, masculino).
nombre([botes|S], S, [boats|T], T, plural, masculino).
nombre([barcos|S], S, [boats|T], T, plural, masculino).
nombre([cruceros|S], S, [cruises|T], T, plural, masculino).
nombre([aviones|S], S, [planes|T], T, plural, masculino).
nombre([buques|S], S, [ships|T], T, plural, masculino).

nombre([bicis|S], S, [bikes|T], T, plural, femenino).
nombre([bicicletas|S], S, [bikes|T], T, plural, femenino).
nombre([motos|S], S, [motorcycles|T], T, plural, femenino).
nombre([motocicletas|S], S, [motorcycles|T], T, plural, femenino).


%Números
          %Singular
nombre([numero|S], S, [number|T], T, singular, masculino).
nombre([cero|S], S, [zero|T], T, singular, masculino).
nombre([uno|S], S, [one|T], T, singular, masculino).
nombre([dos|S], S, [two|T], T, singular, masculino).
nombre([tres|S], S, [three|T], T, singular, masculino).
nombre([cuatro|S], S, [four|T], T, singular, masculino).
nombre([cinco|S], S, [five|T], T, singular, masculino).
nombre([seis|S], S, [six|T], T, singular, masculino).
nombre([siete|S], S, [seven|T], T, singular, masculino).
nombre([ocho|S], S, [eight|T], T, singular, masculino).
nombre([nueve|S], S, [nine|T], T, singular, masculino).
nombre([diez|S], S, [ten|T], T, singular, masculino).
          %Plural
nombre([numeros|S], S, [numbers|T], T, singular, masculino).




% verbo(numero, persona).
verbo([come|S], S, [eats|T], T, singular, tercera).
