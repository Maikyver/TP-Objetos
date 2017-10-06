import Cancion.*
import Presentacion.*

class Musico {
	
	var cancionesAInterpretar = []
	var tipoDeMusico 
	var habilidad = 0
	var albumes = []
	//var tipoDeCobro
	
	constructor (unTipoDeMusico,unaHabilidad,unosAlbumes//,unTipoDeCobro)
	){
		tipoDeMusico =unTipoDeMusico
		habilidad = unaHabilidad
		albumes = unosAlbumes
		//tipoDeCobro = unTipoDeCobro
	}
	method tipoDeMusico() =tipoDeMusico
	method tipoDeMusico(musico) {
		tipoDeMusico  = musico
	}
	
	method habilidad () =habilidad 
	method tuHabilidad(habilidadM) {
		habilidad  = habilidadM
	}
	method tuHabilidad()=self.tipoDeMusico().tuHabilidad(self.habilidad())
	
	method cancionesAInterpretar(canciones) = cancionesAInterpretar.addall(canciones)

	/*
	method tipoDeCobro()= tipoDeCobro
	method tipoDeCobro(musico){
		tipoDeCobro = musico
	}
	*/
	
	method interpretasBien(cancion) {
	return	
		self.albumesPublicados().size()>=3||
		self.tuHabilidad()>60 ||
		self.esDeTuAutoria(cancion)||
		self.tipoDeMusico().interpretasBien(cancion)
	}
	
	method esDeTuAutoria(cancion)= self.albumesPublicados().any({album => album.contenesCancion(cancion)})
	
	method cobras (presentacion) { 
		 self.tipoDeMusico().cobras(self)
		}
	
	method albumesPublicados() = albumes
	method albumesPublicados(albumesP) =self.albumesPublicados().addAll(albumesP)
	method sosMinimalista() = self.albumesPublicados().all({album => album.cacionesSonCortas()})
	method cancionesContienen(palabra) = self.albumesPublicados().cancionesConLaPalabra(palabra)
	method duracionObraCompleta() = self.albumesPublicados().sum({album => album.duracion()})
	method cancionMasLarga() = self.albumesPublicados().filter({album => album.cancionMasLarga()})     
	method laPegaste() = self.albumesPublicados().all({album => album.buenaVenta()})
	method palabra(unaPalabra){self.tipoDeMusico().cambiarPalabra(unaPalabra)}
	method esHabilidoso()= self.tuHabilidad()>70
	method publicoUnAlbum()=self.albumesPublicados().size()>=1
	method cualesInterpretasBien(canciones){self.cancionesAInterpretar(canciones).filter({cancion => cancion.interpretasBien()})
		return cancionesAInterpretar}
	
	}
	
class Palabrero {
	var palabra 
	constructor(unaPalabra)
	{
		palabra=unaPalabra
	}
	method palabra()=palabra 
	method palabra(unaPalabra)  {palabra  = unaPalabra} 
	method cambiarPalabra(unaPalabra) {self.palabra(unaPalabra) }
	method tuHabilidad(habilidad) = habilidad
	
	method interpretasBien(cancion) = cancion.contienePalabra(self.palabra())
} 
class Larguero{
	 const puntosHabilidad
	 const duracion 
	constructor(unosPuntosHabilidad,unaDuracion)
	{
		puntosHabilidad=unosPuntosHabilidad
		duracion = unaDuracion
	}
	method puntosHabilidad()=puntosHabilidad 
	method tuHabilidad(habilidad) {return habilidad +  self.puntosHabilidad()}
	method interpretasBien(cancion) { return cancion.duracionCancion()>duracion}
}

class Imparero inherits Larguero{
	override method interpretasBien(cancion){return cancion.duracionCancion().odd()}	
}

//class CobroSegunCantidadArtistas{}

//class CobroSegunCapacidad{}

//class CobroSegunInflacion{}

class MusicoComoLuisAlberto {

	var guitarra= fender
	method guitarra()=guitarra 
	method guitarra(unaguitarra)  {guitarra  = unaguitarra} 
	method tuHabilidad (habilidad) {
		if ((self.guitarra().valorGuitarra() * 8)<100) 
		
			return (self.guitarra().valorGuitarra() * 8)
		else
			return 100
	} 
	
	method interpretasBien(cancion) = true
	
	method cobras (presentacion) {
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
	 
	 var estadoRota = false
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
 
