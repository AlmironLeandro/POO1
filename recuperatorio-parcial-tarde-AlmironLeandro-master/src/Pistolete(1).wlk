import soldado.*
class Pistolete {
	// ME QUEDE SIN TIEMPO
	var largo
	method setLargo(longitud){largo+=longitud}
	method potenciaASoldado(soldado){return if(soldado.edad() >30){return largo*3}else{return largo*2}}	
	
}
