import personas.*

object spa {
	var gente
	method atender(persona) {

		if(gente==persona)
		{//premio
		persona.recibirMasajes()
		persona.darseUnBanioDeVapor()
		persona.recibirMasajes()
		}
		gente=persona
		persona.darseUnBanioDeVapor()
		persona.recibirMasajes()



		// hay que hacer que la persona reciba masajes y se dé un baño de vapor
		// despues, agregar el premio para el que vuelve enseguida
	}
}