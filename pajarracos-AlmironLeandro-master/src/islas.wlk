import aves.*
class Islas{
	var property alpiste=10
	var property maiz=10
	var aves=[]
	method agregarAve(ave){aves.add(ave)}
	method obtenerAvesDebiles(){return aves.filter({ave=>ave.fuerza()>1000})}
	method obtenerFuerza(){return aves.sum({ave=>ave.fuerza()})}
	method esRobusta(){return aves.all({ave=>ave.fuerza()>300})}
	method hayTerremoto(){aves.ForEach({ave=> ave.disgusto()})}
	method hayTormetan(){self.obtenerAvesDebiles().ForEach({aveDebil=>aveDebil.disgusto()})}
	
	method aveCapitana(){return self.cualEsCapitana().max({ave=>ave.fuerza()})}
	method cualEsCapitana(){return aves.filter({ave=> ave.fuerza().between(1000,3000)})}
	method sesionRelax(){aves.ForEach({ave=> ave.relax()})}
	method estaEnPaz(){return aves.all({ave=> ave.conformeConLaIsla()})}
	method alimentacion(){aves.ForEach({ave=> ave.alimentoDelaIsla()})}
}
