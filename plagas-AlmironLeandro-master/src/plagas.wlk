//inherits heredacion
//override method..pisar metodo----super()"
//super clase, sub-clase, herencia de clases ----> estudiar y ampliar ("-.-")
// clase Barrios
class Barrios {

	var elementos = []

	method agregarElementos(element) {
		elementos.add(element)
	}

	method elementosBuenos() {
		return elementos.filter({ elemento => elemento.elementoBueno() })
	}

	method elementosMalos() {
		return elementos.filter({ elemento => not elemento.elementoBueno() })
	}

	method barrioCopado() {
		return self.elementosBuenos().size() > self.elementosMalos().size()
	}

}

//clase hogar
class Hogar {

	var nivelMugre = 0
	;
	var confort = 0

	;
	method elementoBueno() {
		return (nivelMugre / 2 <= confort)
	}

}

//clase Huerta
class Huerta {

	var capacidad = 200

	method elementoBueno() {
		return capacidad > configuracionHuerta.niveldeHuerta()
	}

}

//clase Mascota
class Mascota {

	var nivelSalud = 250

	method saludable() {
		return nivelSalud >= 250
	}

	method elementoBueno() {
		return nivelSalud > 250
	}

}

//Configuracion Huerta---obj
object configuracionHuerta {

	var nivelDeHuerta

	;
	method aumentaNivelHuerta(cuanto) {
		nivelDeHuerta += cuanto
	}

	method niveldeHuerta() {
		return nivelDeHuerta
	}

}
class Cucarachas {

	var property poblacion = 9
	var property peso = 0

//Requerimientos
	method nivelDanio() {
		return  poblacion//arreglar
	}

	method trasmitirEnfermdad() {
		return peso >= 10 && poblacion > 10
	}
}

class Pulgas {

	var property poblacion = 5
	
//Requerimientos
	method nivelDanio() {
		return poblacion * 2
	}

	method trasmitirEnfermedad() {
		return poblacion > 10
	}
}

class Mosquitos {

	var property poblacion = 5

//Requerimientos
	method nivelDanio() {
		return poblacion
	}

	method trasmitirEnfermedad() {
		return poblacion % 3 == 0 && poblacion > 10
	}
}

/*	class Garrapatas {

 * 	method totalPoblacion(){
 * 		return poblacion
 * 	}
 }	*/
