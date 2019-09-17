import Personas.*
import Pistolete.*
import Espadon.*
class Soldado inherits Personas{
	var armas=[]
	// ME QUEDE SIN TIEMPO
	method agregarArma(arma){armas.add(arma)}
	method potenciaASoldado(){return armas.}
	override method potencia(){return super()+ self.potenciaASoldado(self)}
	override method darTributo(planeta){planeta.construirMurallas(5)}
	
}
