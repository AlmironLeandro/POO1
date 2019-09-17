import Personas.*
import docentes.*
import soldado.*
import atleta.*
class Planeta {
	var personas=[]
	var longitud
	var  museos=0
	method agregarPersona(persona){personas.add(persona)}
	method delegacionDiplomatica(){return personas.filter({persona=> persona.esDestacado()})}
	method valorInicialDefensa(){return personas.filter({persona=>persona.potencia()>=30}).size()}
	method esCulto(){return museos>=2 && personas.all({persona=> persona.inteligencia()>=10})}
	method potenciaReal(){return personas.sum({persona=>persona.potencia()})}
	method longitudTotal(){return longitud}
	method construirMurallas(kms){longitud+=kms}
	method fundarUnMuseo(){museos+=1}
	//verificar
	method elHabitanteConMayorPotencia(){return personas.max({persona=>persona.potencia()})}
	method potenciaAparente(){return self.elHabitanteConMayorPotencia().potencia() * personas.size()}
	method necesitaReforzarse(){return self.potenciaAparente() > self.potenciaReal()*2}
	method recibirTributos(){personas.forEach({persona=>persona.darTributo(self)})}
	method habitantesValiosos(){return personas.filter({persona=>persona.valor()>=40})}
	// lo pense de muchas formas al metodo apaciguar, me funciono esta.
	method apaciguar(planeta){self.habitantesValiosos().forEach({p=>p.darTributo(planeta)})}
	
	
}
