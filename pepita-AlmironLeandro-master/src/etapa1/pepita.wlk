
object pepita {
	var energia = 0
	var estado="bien"
	method energia() { return energia }
	method comer(gramos) { energia += 4 * gramos }
	method volar(kms) { energia -= 10 + kms }
	method bailar(minutos) { energia= energia- minutos"energia"}
	method leer() {return "No molestar"}
	method refriarse() {estado=refriada return estado}
}