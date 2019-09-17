import wollok.game.*
import configJuego.*
object pachamama {
	var property position = game.at(2, 13)
	var agradecimiento = 10
//	var estaAgradecida= self.estaAgradecida()

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
	method recibirOfrenda(){
		if(self.estaAgradecida()){
			self.llover()
		}else{
			agradecimiento = 10
		}
	}

	method estaAgradecida() {
		return agradecimiento >= 10
	}
	method image() {
		return if (self.estaAgradecida())
				{"pachamama-agradecida.png"}
				else{ "pachaenojada.png"
				}
	}
	
	method moveRight() {
		var y = position.y()
		var x = position.x()
		if(x==configPacman.ejeX()-1){
			position = game.at(0,y)
		}else{	position = position.right(3)}
	}
	
}
