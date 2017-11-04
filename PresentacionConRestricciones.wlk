import Presentacion.*
import Musico.*
import Cancion.*

class PresentacionConRestricciones inherits Presentacion {
	const restricciones
	constructor(unasRestricciones,unLugar,unaFecha) = super(unLugar,unaFecha){
		
		restricciones=unasRestricciones
	}
	
	method restricciones()=restricciones
	override method sePresentan(nuevasPersonas){
		self.lanzarExcepcionSiAlgunoNoPuedeEntrar(nuevasPersonas)
		super(nuevasPersonas)
		}
	method lanzarExcepcionSiAlgunoNoPuedeEntrar(nuevasPersonas) =
	nuevasPersonas.forEach({unaPersona => self.lanzarExcepcionSiNoPuedeEntrar(unaPersona)})
	
	method lanzarExcepcionSiNoPuedeEntrar(unMusico){
	self.restricciones().forEach({restriccion => restriccion.rompeteSiNoLoDejasPasar(unMusico)})
	}
	}	
	
	
class Restriccion{
	method condicion(unaPersona)
	method mensaje()
	method rompeteSiNoLoDejasPasar(unaPersona)=if(self.condicion(unaPersona))
		throw new Exception(self.mensaje())	
	}

class PocaHabilidad inherits Restriccion{
	override method condicion(unaPersona)=unaPersona.esHabilidoso().negate()
	override method mensaje()="el musico no puede participar si posee menos de 70 puntos de habilidad"
	}
	
class InterpertaBienCancion inherits Restriccion{		
	const cancion
	constructor(unaCancion){	
		cancion=unaCancion
		}
		
	method cancion()=cancion
	override method condicion(unaPersona)=unaPersona.interpretasBien(self.cancion()).negate()
	override method mensaje()="Debe poder cantar "+self.cancion().nombre()	
	}

class TenerUnAlbum inherits Restriccion{
	override method condicion(unaPersona)=unaPersona.publicoUnAlbum().negate()
	override method mensaje()="el musico debe haber publicado al menos un album de su autoria"
	}
	