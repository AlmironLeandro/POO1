import Personas.*
class Atleta inherits Personas{
	var masaMuscular=4
	var tecnicas=2
	method masaMuscular(){return masaMuscular}
	method tecnicas(){return tecnicas}
	override method potencia(){return super()+ self.masaMuscular()*self.tecnicas()}
	override method esDestacado(){return super()|| self.tecnicas()>5}
	//Mejorar, es cada 5 dias
	method entrenar(){masaMuscular+=1 }
	method aprenderUnaTecnica(){tecnicas+=1}
	override method darTributo(planeta){planeta.construirMurallas(2)}
}
