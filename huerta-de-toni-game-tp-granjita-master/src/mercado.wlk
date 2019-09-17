import wollok.game.*

object mercadoNorte {
	const property image = "mercado.png"
	var property position = game.at(7, 14)
	var property oro = 15000
	var property mercaderia= []
	
	method agregarMercaderia(lista){ mercaderia.addAll(lista)}
	method comprarMercaderiaA(quien){
		self.agregarMercaderia(quien.plantasListas())
		oro-= quien.oroRecolectado()
	}
	
}

object mercadoSur {
	const property image = "mercado.png"
	var property position = game.at(7, 0)
	var property oro = 10000
	var  mercaderia= []
	
	method agregarMercaderia(lista){ mercaderia.addAll(lista)}
	method comprarMercaderiaA(quien){
		self.agregarMercaderia(quien.plantasListas())
		oro-= quien.oroRecolectado()
	}
	
}