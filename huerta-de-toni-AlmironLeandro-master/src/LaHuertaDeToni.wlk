//ETAPA 3
object pachamama {

	var agradecimiento = 10

	method llover() {
		agradecimiento += 5
	}

	method tirarBasura() {
		agradecimiento -= 10.max(0)
	}

	method fumigar() {
		agradecimiento = 0
	}

	method abonar() {
		agradecimiento = agradecimiento * 2
	}

	method estaAgradecida() {
		return agradecimiento >= 10
	}

}

//toni
object toni {

	var property oroRecolectado
	var property plantasSembradas = []
	var property plantasListas = []

	method agregarPlanta(planta) {
		plantasSembradas.add(planta)
	}

	method regarLasPlantas() {
		plantasSembradas.forEach({ plant => plant.madurar()})
	}

	/* verifica cuales de las plantas sembradas estan listas para cosechar
	 y devuelve una nueva lista a partir de estas*/
	method plantasListasParaCosechar() {
		return plantasSembradas.filter({ plantas => plantas.listaParaCosechar() })
	}

	/*Apartir de la nueva coleccion generada por "plantasListasParaCosechar()"agrega esta a la coleccion
	 cosecharTodo(). Remueva las plantas que estan listas para cosechar de plantasSembradas[].*/
	method cosecharTodo() {
		plantasListas.addAll(self.plantasListasParaCosechar())
		plantasSembradas.removeAll(self.plantasListasParaCosechar())
	}

	method venderCosecha() {
		oroRecolectado += plantasListas.sum({ plantas => plantas.oro() })
		plantasListas.clear()
	}

// varias opciones
	/* 
	 * method plantaListaParaCosechar(planta){
	 * 	if(planta.listaParaCosechar()){
	 * 	plantasListas.add(planta)
	 * 	plantasSembradas.remove(planta)
	 * 	}
	 * 	else{
	 * 		self.error("no estoy lista para cosechar")
	 * 	}
	 }*/
	/* 
	 * method plantasListasParaCosechar(){
	 * 	if(plantasSembradas.listaParaCosechar()){
	 * 		plantasListas.addAll(plantasSembradas)
	 * 		plantasSembradas.clear()
	 * 	}
	 * 	else{
	 * 		//
	 * 	}
	 }*/
	// ETAPA 2
	method paraCuantosDiasLeAlcanza() {
		var oroPosible = oroRecolectado
		var cuenta
		oroPosible += (plantasListas.sum({ plantas => plantas.oro() }))
		cuenta = oroPosible / 200
		return cuenta
	}

	method cuantoHayParaCeliacos() {
		return (plantasListas.filter({ plantas => plantas.gluten() }))
	}

	method convieneRegar() {
		return (plantasSembradas.any({ plantas => not plantas.listaParaCosechar() }))
	}

}

class Maiz {

	var nivelMaduracion = 0
	var oro = 150

	method gluten() {
		return false
	}

	method oro() {
		if (pachamama.estaAgradecida()) {
			oro = 180
			return oro
		} else {
			return oro
		}
	}

	method madurar() {
		if (nivelMaduracion == 0) {
			nivelMaduracion = 1
		} else {
			nivelMaduracion = 1
		}
	}

	method listaParaCosechar() {
		return nivelMaduracion == 1
	}

}

class Trigo {

	var aux = true
	var nivelMaduracion = true
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

	method madurar() {
		if (nivelMaduracion && pachamama.estaAgradecida()) {
			aux = false
			maduracion += 2
			if (maduracion == 4) {
				maduracion = 0
			}
		}
		if (nivelMaduracion && aux) {
			maduracion += 1
			if (maduracion == 4) {
				maduracion = 0
			}
		}
		aux = true
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

}

