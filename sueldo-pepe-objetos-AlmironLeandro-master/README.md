# Sueldo de Pepe

<img src="assets/money.jpg" height="150" width="250">

## Consigna

Implementar en Wollok los objetos necesarios para calcular el sueldo de pepe, que se define así:

**sueldo = neto + bono x presentismo + bono x resultados**.

Ya hay una definición (recontra) incompleta de Pepe, no vale agregarle parámetros a `sueldo()`, con modificar los valores de las variables debería alcanzar para que se haga la cuenta correcta.

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
