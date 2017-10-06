import Musico.*
import Representante.*
import Cancion.*

class Banda {
	var integrantes = []
	var representante
	var nombre
	
	constructor(unNombre,unosMusicos,unRepresentante){
		integrantes = unosMusicos
		representante = unRepresentante
		nombre = unNombre
	}
	
	method tusIntegrantes()= integrantes
	method tuRepresentante()= representante
	method tuNombre()= nombre
	method habilidad() = self.tusIntegrantes().sum({musico => musico.habilidad()}) + self.habilidad() * 0.1
	method cobras() = self.tusIntegrantes().sum({musico => musico.cobras()}) + self.tuRepresentante().cobras()
	method puedenInterpretar(cancion) = self.tusIntegrantes().forEach({musico => musico.interpretasBien(cancion)})
}