 import Musico.*
class LuisAlberto inherits Musico  {

	
	method habilidad (guitarra) {
		if (guitarra.valorGuitarra() * 8<100) 
		
			return guitarra.valorGuitarra() * 8
		else
			return 100
	} 
	
	override method interpretasBienLaCancion(cancion) = true
	
	override method cobras (presentacion) {
		if(presentacion.fechaPresentacion() < 20170901)
			return 1000
		else
		return 1200
	}
}

object fender{
	method valorGuitarra () = 10
}

object gibson{
	 
	 var estadoRota = true
	method valorGuitarra () {
		if (self.estadoRota())
		return 5
		else
		return 15
	}
	method estadoRota()= estadoRota
	method rompete(){ estadoRota = true }
	method arreglate(){ estadoRota = false }
}
 