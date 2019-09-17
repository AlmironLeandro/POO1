
class Personas {
	var  edad=0
	method setEdad(anios){edad=anios}
	method getEdad(){return edad}
	method potencia(){return 20}
	//method inteligencia(){if(edad.beetween(20,40)){return 12}else{return 8}}
	method inteligencia(){if(edad.between(20,40)){return 12}else{return 8}}
	method esDestacado(){return edad==25 || edad==35}
	method darTributo(planeta){}
	method valor(){return self.potencia()+ self.inteligencia()}
}
