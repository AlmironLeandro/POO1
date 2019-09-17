import pachamama.*
import wollok.game.*
class Maiz {
	var nivelMaduracion = 0
	var oro = 150

	method gluten() {
		return false
	}

	method oro() {
		if (pachamama.estaAgradecida()) {
			oro = 180
		}
		return oro
		
	}

	method madurar() {
		if (nivelMaduracion == 0) {
			nivelMaduracion = 1
		} else {
			nivelMaduracion = 1
		}
	}
	method image(){
		return if (nivelMaduracion == 0) { "maiz_bebe.png"}
		else { "maiz_adulto.png"}
	}

	method listaParaCosechar() {
		return nivelMaduracion == 1
	}
	
}

class Trigo {
	
	var maduracion = 0
	var oro = 100

	method gluten() {
		return true
	}

	method oro() {
		if (maduracion == 3) {
			oro = 200
			return oro
		} else {
			oro = 100
			return oro
		}
	}
	method image(){
			return if(maduracion == 0){"trigo_0.png"}
		else if(maduracion == 1){"trigo_1.png"}
		else if(maduracion == 2){"trigo_2.png"}
		else if(maduracion == 3){"trigo_3.png"}
		else if(maduracion == 4){"trigo_4.png"}
	}
	method madurar() {
	if(pachamama.estaAgradecida()){
		maduracion= (maduracion+2).min(3)
	}
	else{
		maduracion= (maduracion+1).min(3)
	}
	self.image()
	}

	method listaParaCosechar() {
		return maduracion >= 2
	}

}
class Tomaco {
	var oro = 80

	method gluten() {
		return false
	}

	method oro() {
		return oro
	}

	method madurar() {
		
	}

	method listaParaCosechar() {
		return (not pachamama.estaAgradecida())
	}
	method image(){
		return if (not pachamama.estaAgradecida()){   "tomaco_ok.png"}
		else {  "tomaco_podrido.png"}
		
	}

}