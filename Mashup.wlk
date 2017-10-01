import Cancion.*

class Mashup inherits Cancion {

	constructor(canciones) = super(){
		letra = self.concatenarSegun({cancion => cancion.letra()}, canciones)
		titulo = self.concatenarSegun({cancion => cancion.titulo()}, canciones)
		duracion = tamanioPorDuracion.elMasGrande(canciones).duracion()}
	
	
	method concatenarSegun(criterio, canciones) =
	canciones.map({cancion => criterio.apply(cancion).trim()}).join(" ")
	}