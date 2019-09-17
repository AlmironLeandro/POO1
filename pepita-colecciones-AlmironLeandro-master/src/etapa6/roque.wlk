import pepita.*
import comidas.*
import masAves.*

object roque {//pupilos fortachones(+100 energia).
	var pupilos = []
	method pupilos(){return pupilos.take(3)}
	method agregarPupilo(unAve){ pupilos.add(unAve ) }
	method borrarPupulo(unAve){pupilos.remove(unAve)}
	method pupilosFortachones(){pupilos.filcer({pupilo=> pupilo.energia() >= 100})
		
	}
	/*method agregarPupilo2(unAve){ pupilo2 = unAve  }
	method agregarPupilo3(unAve){ pupilo3 = unAve  }*/
	/*method tuPupiloEs(ave) { 
		pupilo = ave
	} */
	/*method pupiloActual() { return pupilo }*/

	method entrenar() { 
		pupilos.ForEach({pupilo => 
		pupilo.volar(10)
		pupilo.comer(alpiste,30)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
	})
	} 
}