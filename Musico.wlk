import Cancion.*
class Musico {
	
	var tipoDeMusico 
	var habilidad = 0
	var albumes = []
	
	constructor (unTipoDeMusico,unaHabilidad,unosAlbumes)
	{
		tipoDeMusico =unTipoDeMusico
		habilidad = unaHabilidad
		albumes = unosAlbumes
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

	
	method interpretasBien(cancion) {
	return	
		self.albumesPublicados().size()>=3||
		self.habilidad()>60 ||
		self.tipoDeMusico().interpretasBien(cancion)
	}
	
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
	
	}
	
class VocalistaPopular {
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
class MusicoDeGrupo{
	 const puntosHabilidad 
	constructor(unosPuntosHabilidad)
	{
		puntosHabilidad=unosPuntosHabilidad
	}
	method puntosHabilidad()=puntosHabilidad 
	method tuHabilidad(habilidad) = habilidad +  self.puntosHabilidad()
	method interpretasBien(cancion) { return cancion.duracionCancion()>300}
}

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
 
