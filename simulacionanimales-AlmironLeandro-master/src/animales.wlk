import wollok.game.*

class Comedor{
	var property position= game.at(9, 9)
	const property image = "comedero.gif"
	method darDeComer(){
		
	}
	method atenderAnimal(){
		
	}
	method recargar(){
		
	}
}
class Vaca {

	var property position = game.at(3, 5)
	const property image = "vaca.gif"
	var property peso = 200
	var property tieneSed = false

	method comer(kilos) {
		if (self.hambre()) {
			tieneSed = true
			peso += kilos / 2
		} else {
			self.error("solo podrán comer si tienen hambre")
		}
	}

	method hambre() {
		return peso < 200
	
	}
	method beber() {
		tieneSed = false
			// otra opcion 	peso-=1
		peso = (peso - 1).max(1)
	}
	method perderPeso(){
		peso= (peso*0.95).max(50)
	}

	method moveLeft() {
		if(peso>50){
		position = position.left(1)
		self.perderPeso()
		}
		else{
			self.error("no me puedo mover")
		}

}

	method moveRight() {
		if(peso>50){
		position = position.right(1)
		self.perderPeso()
		}
		else{
			self.error("no me puedo mover")
		}
	}

	method moveUp() {
		if(peso>50){
		position = position.up(1)
		self.perderPeso()
		}
		else{
			self.error("no me puedo mover")
		}
		
		
	}

	method moveDown() {
		if(peso>50){
		position = position.down(1)
		self.perderPeso()
		}
		else{
			self.error("no me puedo mover")
		}
	}

}

class Gallina {

	var property position = game.at(4, 5)
	const property image = "gallina.gif"
	var property peso = 4
	var property tieneSed = false
	var i=0

	;
	method comer(kilos) {
		i+=1;
	
	}
	method hambre(){
	return 	i%2==0
	}

	method beber() {
		if (i == 2 || i == 5) {
			tieneSed = true
		
		} else {
			tieneSed = false
		
		}
	}

	method moveLeft() {
		position = position.left(1)
	}

	method moveRight() {
		position = position.right(1)
	}

	method moveUp() {
		position = position.up(1)
	}

	method moveDown() {
		position = position.down(1)
	}

}

