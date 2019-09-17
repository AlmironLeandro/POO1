import objetos.*
import personas.*

object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera
	
	method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
	method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
	//precondicion, debe primero cargarse las variables(objeto).
	method esBrillante() { 
		const elDeMostradorBrilla = objetoEnMostrador.material().brilla() // implementar
		const elDeVidrieraBrilla =	objetoEnVidriera.material().brilla() // implementar
		return elDeMostradorBrilla and elDeVidrieraBrilla
	}
	
	method esMonocromatico() {
		return objetoEnMostrador.color() == objetoEnVidriera.color()
	}
	
	method estaDesequilibrado() {
		return objetoEnMostrador.peso()>objetoEnVidriera.peso()

	}
	// completar
	method puedeMejorar(){
	   return seft.estaDesequlibrado() or self.esMonocromatico()
	}
	method tieneAlgoDeColor(color) {
	return objetoEnMostrador.color()==color || objetoEnVidriera.color()==color
	}

	method puedeOfrecerleAlgoA(persona) {
			return persona.leGusta (objetoEnMostrador) or persona.leGusta (objetoEnVidriera)
	}
}