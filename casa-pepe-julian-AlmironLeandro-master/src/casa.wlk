import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	var   ultimaCosa
	method comprar(cosa){cosas.add(cosa) ultimaCosa=cosa}
	method cantidadDeCosasCompradas(){return cosas}
	method tieneComida(){cosas.esComida()}
	method vieneDeEquiparse(){return ultimaCosa.esElectrodomestico() || ultimaCosa.precio()>5000}
	method 
}
