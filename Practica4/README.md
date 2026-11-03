Objetivo: Familiarizarte y empezar a implementar casos de recursividad en programas sencillos con haskell

Tiempo requerido: 12hrs

Ejercicio favorito: Creo fue el de los enteros, aunque igual fue algo más fácil ya que ya contabamos con las funciones auxiliares, fue más entretenido de entender


1. ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Como se manejan todos casos en cada implementación?
La diferencia es en como manejas los casos de suma o resta con número positivos y negativo, en la implementación del archivo hace una comprobacion previa con if-else para saber si son iguales en magnitud y usa la funcion de mayorEnt para comprobar que magnitud es mayor y saber que signo asignarle dependiendo el caso, en el caso de el archivo del repositorio para estos casos simplemente usa la resta junto con los casos bases y como maneja estos usando "m" y "n" en vez de suc(m) y suc(n)

2. ¿Por qué se tiene implementada la operación mayorEnt en el archivo ente-
ros.hs ?
Por que compara la magnitud de los 2 valores y decide el signo por lo que maneja de una mejor forma los casos de suma o resta de números positivos con negativos

3. Si pudieras quedarte con una sola implementación. ¿Cuál sería? Justifica tu
respuesta.
Creo que me quedaria con la de el archivo enteros.hs, siento que su forma de definir los casos con signos es mejor a comparación de la otra, aunque puede llegar a ser algo más complicada de entender, a su vez es más explicito cada casso una vez que lo enteindes 