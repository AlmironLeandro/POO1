import objetos.*

object estefania {
	method leGusta(objeto) { return objeto.color().esFuerte() }
}
//Entre los objetos que le gustan a Rosa podemos encontrar: una pelota, una 
//remera o un muñeco cuyo peso variable fuera menor a 2000 gramos.
object rosa {
	method leGusta(objeto) {return  objeto.peso() <=2000  }  // completar
}
//A Luisa en cambio le gustan objetos del tipo: una placa de cobre, o un muñeco de vidrio.
object luisa {
	method leGusta(objeto){return objeto.material().brilla()}
}

object juan {
	method leGusta(objeto){return not(objeto.color() .esFuerte()) or objeto.peso().between(1200,1800)}
}

