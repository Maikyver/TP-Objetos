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
	method tuHabilidad() = self.tusIntegrantes().sum({musico => musico.tuHabilidad()})  * 1.1
	method bandaCobra(presentacion)=self.tusIntegrantes().sum({musico => musico.cobras(presentacion)})
	method cobras(presentacion) = self.bandaCobra(presentacion) + self.tuRepresentante().cobras(self.bandaCobra(presentacion))
	method puedenInterpretar(cancion) = self.tusIntegrantes().all({musico => musico.interpretasBien(cancion)})
}