import Personas.*
class Docentes inherits Personas {
	var cursos=0
	method setCursos(cursosDados){cursos+=cursosDados}
	override method inteligencia(){return super()+ cursos*2}
	override method esDestacado(){return cursos>3}
	override method darTributo(planeta){planeta.fundarUnMuseo()}
	override method valor(){return super()+5}
}
