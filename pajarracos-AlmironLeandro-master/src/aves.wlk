import islas.*

class Aguiluchos inherits Islas {

	var property velocidadInicial = 20

	method disgusto() {
		velocidadInicial = velocidadInicial * 2
	}

	method fuerza() {
		if (velocidadInicial >= 60) {
			return 180
		} else {
			return velocidadInicial * 3
		}
	}

	method conformeConLaIsla() {
		return alpiste > 8
	}

	method relax() {
		velocidadInicial -= 10.max(0)
	}

	method alimentoDelaIsla() {
		alpiste -= 3
		velocidadInicial += 15
	}

}

class Albatros inherits Islas {

	var property peso = 4000
	var masaMuscular = 600

	method fuerza() {
		if (peso > 6000) {
			return masaMuscular
		} else {
			return masaMuscular / 2
		}
	}

	method disgusto() {
		peso += 800
	}

	method irAlGimnasio() {
		(masaMuscular += 500 )
		(peso += 500)
	}

	method relax() {
		peso -= 300.max(0)
	}

	method verificacion() {
		return aves.filter({ ave => ave.fuerza() > self.fuerza() })
	}

	method conformeConLaIsla() {
		return self.verificacion().size() >= 2
	}

	method alimentoDelaIsla() {
		maiz -= 4
		masaMuscular += 700
		peso += 700
	}

}

class Palomas inherits Islas {

	var property ira = 200

	method disgusto() {
		ira += 300
	}

	method fuerza() {
		return ira * 2
	}

	method relax() {
		ira -= 50.max(0)
	}

	method conformeConLaIsla() {
		return self.obtenerAvesDebiles().size() >= 1
	} // Lo iba hacer con un any...pero pasaron cosas.

	method alimentoDelaIsla() {
	}

	method equilibrarse() {
		if (self.fuerza() <= 700) {
			self.disgusto()
		} else {
			self.relax()
		}
	}

}

class AguiluchosColorados inherits Aguiluchos {

	override method fuerza() {
		return super() + 400
	}

// override method relax(){super()}
}

class PalomasTorcazas inherits Palomas {

	var property huevos = 3

	override method fuerza() {
		return huevos * 100
	}

	override method disgusto() {
		super()
		huevos += 1
	}

//	override method relax(){super()}	
}
class PalomaMontera /*inherits Palomas*/{
	var property fuerza=2000.max(2000)
}
class PalomaManchada inherits Palomas{
	var nido=0
	var property grosor=5
	var property resistencia=3
	var potencia=(grosor*resistencia)+20
	override method disgusto(){super()
		nido+=1
	}
	override method relax(){super()
		nido+=1
		if(nido>2){ grosor+=1}//no entendi el enuciado.
	}
	override	method ira(){ira+=potencia*nido}

}

