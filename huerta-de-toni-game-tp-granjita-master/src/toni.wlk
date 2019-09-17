import wollok.game.*
import pachamama.*
import plantas.*
import configJuego.*

object toni {

	var property image = "toni.png"
	var property position = game.at(3, 3)
	var property oroRecolectado = 0
	var property plantasSembradas = []
	var property plantasListas = []
		//BONUS
	method sembrarHorizontal(){
			var maiz = new Maiz()
			self.agregarPlanta(maiz)
			game.addVisualIn(maiz, self.position())
		}
		//BONUS
	method sembrarVertical(){
			var maiz = new Maiz()
			self.agregarPlanta(maiz)
			game.addVisualIn(maiz, self.position())
	}
		//BONUS
	method posicionY(){return self.position().y()}
		//BONUS
	method posicionX(){return self.position().x()}
	method regarPlanta(){
		return game.colliders(self)
	}
	method agregarPlanta(planta) {
		plantasSembradas.add(planta)
		
	}

	method regarLasPlantas() {
		plantasSembradas.forEach({ plant => plant.madurar()})
		
	}
	method cosecharPlanta(planta){
		plantasSembradas.remove(planta)
		plantasListas.add(planta)
	}

	/* verifica cuales de las plantas sembradas estan listas para cosechar
	 y devuelve una nueva lista a partir de estas*/
	method plantasListasParaCosechar() {
		return plantasSembradas.filter({ plantas => plantas.listaParaCosechar() })
	}
	method puedeCosechar(planta){
		return planta.listaParaCosechar()
	}

	/*Apartir de la nueva coleccion generada por "plantasListasParaCosechar()"agrega esta a la coleccion
	 cosecharTodo(). Remueva las plantas que estan listas para cosechar de plantasSembradas[].*/
	method cosecharTodo() {
		plantasListas.addAll(self.plantasListasParaCosechar())
		plantasSembradas.removeAll(self.plantasListasParaCosechar())
	}
	method collider(){
		return game.colliders(self)
	}

	method venderCosecha() {
		oroRecolectado += plantasListas.sum({ plantas => plantas.oro() })
		plantasListas.clear()
	// Pegar acá todo lo que tenían de Toni en la etapa 1
	}

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

	// Juego
	
	method moveLeft() {
			var y = position.y()
			var x = position.x()
		if(x==0){
			position = game.at(configPacman.ejeX()-1,y)
		}else{	position = position.left(1)}
	}
	method moveRight() {
		var y = position.y()
		var x = position.x()
		if(x==configPacman.ejeX()-1){
			position = game.at(0,y)
		}else{	position = position.right(1)}
	}

	method moveUp() {
		var y = position.y()
		var x = position.x()
		if(y==configPacman.ejeY()-1){
			position = game.at(x,0)
		}else{			position = position.up(1)}
	}

	method moveDown() {
		var y = position.y()
		var x = position.x()
		if(y==0){
			position = game.at(x,configPacman.ejeY()-1)
		}else{	position = position.down(1)}
		
	}

	method toniConMaiz(){ image = "toni-con-maiz.png" }
	method tonSinMaiz(){ image = "toni.png"}



}

