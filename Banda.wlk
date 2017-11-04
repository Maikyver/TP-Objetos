import Musico.*
import Representante.*
import Cancion.*

class Banda {
	var musicos = #{}
	var representante
	var nombre
	
	constructor(unNombre,unosMusicos,unRepresentante){
		musicos = unosMusicos
		representante = unRepresentante
		nombre = unNombre
	}
	
	method tusMusicos()= musicos
	method tuRepresentante()= representante
	method tusIntegrantes()= self.tusMusicos()+ [self.tuRepresentante()]
	method tuNombre()= nombre
	method tuHabilidad() = self.tusMusicos().sum({musico => musico.tuHabilidad()})  * self.plusPorQuimica()
	method plusPorQuimica()= 1.1
	method cobras(presentacion) = self.tusIntegrantes().sum({integrante=> integrante.cobras(presentacion)})
	method puedenInterpretar(cancion) = self.tusMusicos().all({musico => musico.interpretasBien(cancion)})
}