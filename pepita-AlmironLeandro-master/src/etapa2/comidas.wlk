object sorgo{
	method energiaPorGramo(){return 9}
}
object alcaucil{
	method energiaPorGramo() {return 20}
}
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada---Arreglado
object bigMac {
	method energiaPorGramo() { return 2 }
}

object mijo {
	var mojarse = 0
	var secarse = 0
	method mojarse() { return mojarse += 15}
	method secarse() { return secarse += 20}
}
object canelones{
	var salsa=false
	var queso=false
	/*base=20, salsa=5, queso=7 */
	
	method energiaPorGramo()
	{
		if(salsa&&queso)
			{
				return 32
			}
		else if(queso)
			{
				return 27
			}
		else if(salsa)
			{
				return	25
			}
		else
			{	/*Si no tiene ni salsa, y tampoco queso, los canelones dan 20 de energia */
				return 20
			}
	}
	method ponerSalsa()
	{
		salsa=true
	}
	method ponerQueso()
	{
		queso=true
	}
	method sacarQueso()
	{
		queso=false
	}
	method sacarSalsa()
	{
		salsa=false
	}
	method sacarquesoYsalsa() /*Metodo de relleno */
	{
		salsa=false
		queso=false
	}
		method ponerquesoysalsa()/*Metodo de relleno */
	{
		salsa=true
		queso=true
	}
}








