# La huerta de Toni - Defensa del TP

## Extensión al modelo

### La pachamama esta chocha
Agregar a la pachamama el método `estaChocha()`, las condiciones para que la pachamama esté chocha son las siguientes: 
- Debe estar agradecida. 
- y además, el nivel de agradecimiento debe ser múltiplo de 6.

### Maíz andino
Toni decidió agregar una nueva planta a sus cultivos. Las tres especies que hasta el momento produce Toni son: _maíz_, _trigo_ y _tomaco_.
La nueva planta es una variedad de _maíz_ que se llama _**maíz andino**_ y tiene el siguiente comportamiento:
- Cuando regás un _**maíz andino**_, si ya es adulto y la pachamama está chocha, entonces se le agrega un supergrano. 
- Por cada supergrano se obtienen 10 monedas más de oro que lo que correspondería a un _maíz_ normal. Por ejemplo, al venderse un _**maíz andino**_ con 3 supergranos se obtienen 180 monedas de oro, en lugar de 150 que es lo que corresponde a un _maíz_ normal.
- Cuando un _**maíz andino**_ nace, no tiene ningún supergrano.

### Riego potenciado
Agregar a todas las plantas el método `riegoPotenciado()`. 
Cuando a una planta se le aplica el riego potenciado, se la riega, y si la pachamama está agradecida, se la riega nuevamente.

### Toni está contento
Agregar a Toni el método `estaContento()`. Las condiciones para que Toni se encuentre contento son:
- Tenga, al menos, 500 de oro, y que **todas** las plantas que cosechó le den 120 monedas o más cada una.

## Test de la extensión
Realizar los siguientes tests:
- Validar el método `estaChocha()`, subiendo el nivel de agradecimiento de la pachamama al valor 30 así se cumplen las condiciones de estar agradecida y que el nivel de agradecimiento es múltiplo de 6.
- Crear un _**maíz andino**_, regarlo una primera vez para que pasa a ser adulto. Poner a la pachamama chocha y luego volver a regarlo 3 veces para agregarle 3 supergranos. Por último, verificar si se obtienen 180 monedas de oro al venderlo.
- Verificar el método `riegoPotenciado()` para cada una de las plantas, cuando la pachamama está agradecida y también cuando no lo está.
- Consultar si Toni está contento. Realizar una configuración para que esté contento y otra para que no lo esté.

