import Musico.*
import Representante.*
import Cancion.*

class Banda {
	var integrantes = []
	var representante
	
	constructor(unosMusicos,unRepresentante){
		integrantes = unosMusicos
		representante = unRepresentante
	}
	
	method tusIntegrantes()= integrantes
	method tuRepresentante()= representante
	method habilidadBanda() = self.tusIntegrantes().sum({musico => musico.habilidad()}) + self.habilidadBanda() * 0.1
	method bandaCobra() = self.tusIntegrantes().sum({musico => musico.cobras()}) + self.tuRepresentante().cobras()
	method puedenInterpretar(cancion) = self.tusIntegrantes().forEach({musico => musico.interpretasBien(cancion)})
}