import soldado.*
class Espadon {
	// ME QUEDE SIN TIEMPO
	var peso
	method setPeso(pesos){peso+=pesos}
	method potenciaASoldado(soldado){return if(soldado.edad() <40){return peso/2}else{return peso + 6}}	
	
}
