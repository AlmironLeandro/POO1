
object olivia {
	var concentracion=0;
	method gradoDeConcentracion(){return concentracion}
	method recibirMasajes(){concentracion += 3}
	method discute(){concentracion-=1}
	method darseUnBanioDeVapor(){}

}


object bruno {

	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	

	method esFeliz() { return esFeliz }
	method tieneSed() { return tieneSed }
	method peso() { return peso }

	
	method recibirMasajes() { esFeliz = true }
	method darseUnBanioDeVapor() { peso -= 500 ; tieneSed = true }
	method tomarAgua() { tieneSed = false }
	method comerFideos() { peso += 250; tieneSed = true }
	method correr() { peso -= 300 }
	method verElNoticiero() { esFeliz = false }
	
	method estaPerfecto() { return self.esFeliz() and not self.tieneSed() and self.peso().between(50000, 70000) }
	method mediodiaEnCasa() {self.comerFideos() self.tomarAgua() self.verElNoticiero()}


}

object ramiro {

	var pielGrasosa=false
	var nivelContracturado=0;

	method grasaDeLaPiel(){return pielGrasosa}//
	method Contracturado(){return nivelContracturado>0}
	method ta(){return nivelContracturado}
	method recibirMasajes() {
		if(nivelContracturado>2)
		{
		nivelContracturado-=2
		}
		else
		{
			nivelContracturado=0
		}
	}
	method darseUnBanioDeVapor() {pielGrasosa=false }
	method comerseUnBigMac() { pielGrasosa=true }
	method bajarALaFosa() {pielGrasosa=true nivelContracturado+=1 }
	method jugarAlPaddle() {nivelContracturado+=3 }
	
	method diaDeTrabajo() {
		self.bajarALaFosa()
		self.comerseUnBigMac()
		self.bajarALaFosa()
	}
}






