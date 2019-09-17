/* colores */
object rojo { method esFuerte() { return true } }
object verde { method esFuerte() {return true} }  // completar
object celeste { method esFuerte(){return false} }  // completar
object pardo {method esFuerte(){return false}  }  // completar
// rojo, verde, celeste y pardo. De estos, los dos primeros son fuertes,
/* materiales */
// agregar: cobre, madera, cuero
//Como materiales tenemos: el cobre
// y el vidrio que brillan; el lino, la madera y el cuero que no.
//no brillan estos.
object madera { method brilla() { return false } }
object cuero { method brilla() { return false } }
object lino { method brilla() { return false } }
//estos brillan.
object vidrio { method brilla() { return true } }
object cobre{ method brilla() { return true } }


/* objetos */
object remera {
	method color() { return rojo }
	method material() { return lino }
	method peso() { return 800 }
}
//una pelota parda de cuero, pesa 1300 gramos.
object pelota {
	method color() { return pardo}  
	method material() { return cuero }  
	method peso() { return 1300 }  
}
//un muñeco celeste de vidrio, de peso variable.
object munieco {
	var peso = 100;

	method color() { return celeste }
	method material() { return vidrio }
	method peso() { return peso }
	method peso(pesoNuevo) { peso = pesoNuevo }
}

// agregar biblioteca y placa
//una biblioteca verde de madera, pesa 8000 gramos.
object biblioteca{
	method color(){return verde}
	method material(){return madera}
	method peso(){return 8000}
	}

//una placa de cobre, de peso y color variables.
object placa {
	var peso=2400
	var color=rojo
	method color(){return color}
	method material(){return cobre}
	method peso(){return peso}
	}