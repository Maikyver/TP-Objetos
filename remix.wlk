import Cancion.*

class Remix inherits Cancion {
	
	constructor(unaCancion) = super(){
		letra = ("mueve tu cuelpo baby " + unaCancion.letra() + " yeah oh yeah" )
		titulo = unaCancion.titulo()
		duracion = unaCancion.duracionCancion() * 3
	}
	}
	

