# Sueldo de Pepe

<img src="assets/money.jpg" height="150" width="250">

## Consigna

Construir un programa que permita calcular el sueldo de pepe, que se define así:

**sueldo = neto + bono x presentismo + bono x resultados**.

Deben definirse las estructuras, funciones y procedimientos que hagan falta, de forma tal
que se pueda obtener el valor deseado invocando una función sin parámetros, o bien con un
parámetro.

O sea, o bien algo como `sueldoDePepe()`, o bien algo como `sueldo(pepe)`.

En lo posible, que para modificar características de pepe (ver los ejemplos que se proponen) no
haga falta modificar el código de las funciones o procedimientos que se definan; debería
alcanzar con modificar datos.


### Neto

El _neto_ depende de la categoría, hay varias categorías. 
Contemplar al menos estas dos: gerentes que ganan $15000 de neto, y cadetes cuyo neto es $20000.
Tener en cuenta que puede haber más categorías en el futuro.


### Bono por resultados

Hay tres posibilidades para el **bono por resultados**:  

* _Porcentaje_: 10% sobre el neto.  
* _Monto fijo_: $800 fijos.
* _Nulo_: nada.


### Bono por presentismo

Hay varios **bonos por presentismo**:

* _Normal_: $2000 pesos si la persona a quien se aplica no faltó nunca, $1000 si faltó sólo un día, $0 en cualquier otro caso. 
* _Ajuste_: $100 pesos si el empleado no faltón nunca, $0 en cualquier otro caso. 
* _Demagógico_: $500 pesos si el neto es menor a 18000, $300 en caso contrario. Para este bono no importa cuántas veces faltó el emplado.
* _Nulo_: nada. 


## Algunos ejemplos 

1. Asignarle a pepe la categoría cadete, el bono resultado de monto fijo, y el bono presentismo normal. Suponer que faltó 3 días. Debería tener $20800 de sueldo.
1. Asignarle a pepe la categoría gerente, el bono resultado por porcentaje, y el bono de presentismo nulo. Suponer que faltó 1 día. El sueldo debe dar $16500.
1. Asignarle a pepe la categoría cadete, el bono de resultados por porcentaje, y el bono por presentismo normal. Suponer que nunca faltó. Debería tener $24000 de sueldo.
1. Asignarle a pepe la categoría cadete, el bono de resultados por porcentaje, y el bono por presentismo normal. Suponer que faltó 1 día. Debería tener $23000 de sueldo.
