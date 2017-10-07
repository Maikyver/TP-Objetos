import Cancion.*
import Presentacion.*

class Musico {

	var tipoDeMusico 
	var habilidad = 0
	var albumes = []
	var tipoDeCobro
	
	constructor (unTipoDeMusico,unaHabilidad,unosAlbumes,unTipoDeCobro)
	{
		tipoDeMusico =unTipoDeMusico
		habilidad = unaHabilidad
		albumes = unosAlbumes
		tipoDeCobro = unTipoDeCobro
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


	method tipoDeCobro()= tipoDeCobro
	method tipoDeCobro(musico){
		tipoDeCobro = musico
	}
	
	method interpretasBien(cancion) {
	return	
		self.albumesPublicados().size()>=3||
		self.tuHabilidad()>60 ||
		self.esDeTuAutoria(cancion)||
		self.tipoDeMusico().interpretasBien(cancion)
	}
	
	method esDeTuAutoria(cancion)= self.albumesPublicados().any({album => album.contenesCancion(cancion)})
	
	method cobras (presentacion) { 
		 return self.tipoDeCobro().cobras(presentacion)
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
	method cualesInterpretasBien(canciones)=canciones.filter({cancion => self.interpretasBien(cancion)})

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
	override method tuHabilidad(habilidad) = habilidad
	override method interpretasBien(cancion){return cancion.duracionCancion().odd()}	
}

class CobroSegunCantidadArtistas{
	var cobroSolo
	constructor(unCobroSolo)
	{
		cobroSolo=unCobroSolo
	}
	method cobro()=cobroSolo
	method cobro(nuevoCobroSolo){cobroSolo = nuevoCobroSolo}
	method cobras(presentacion){if (presentacion.sePresentan().equals([self])) return self.cobro() else return self.cobro()/2}
	
}

class CobroSegunCapacidad{
	var cobro
	var cantPersonas
	constructor(unCobro,unaCantPersonas)
	{
		cobro=unCobro
		cantPersonas=unaCantPersonas
	}
	method cobro()=cobro
	method cobro(nuevoCobro){cobro = nuevoCobro}
	method cantPersonas()=cantPersonas
	method cantPersonas(unaCantPersonas){cantPersonas = unaCantPersonas}
	method cobras(presentacion){if (presentacion.lugar().capacidad()>self.cantPersonas()) return self.cobro() else return self.cobro()-100}
}

class CobroSegunInflacion{
	var cobro
	var fecha
	var porcentajeAdicional
	constructor(unCobro,unaFecha,unPorcentajeAdicional)
	{
		cobro=unCobro
		fecha=unaFecha
		porcentajeAdicional =unPorcentajeAdicional
	}
	method cobro()=cobro
	method cobro(nuevoCobro){cobro = nuevoCobro}
	method fecha()=fecha
	method fecha(unaFecha){fecha = unaFecha}
	method porcentajeAdicional()=porcentajeAdicional
	method porcentajeAdicional(unPorcentajeAdicional){porcentajeAdicional = unPorcentajeAdicional}
	method cobras(presentacion){if (presentacion.fecha()>self.fecha()) return self.cobro()*(1+self.porcentajeAdicional()) else return self.cobro()}
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
		const fecha = new Date(01,09,2017)
		if(presentacion.fecha() < fecha)
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
 
