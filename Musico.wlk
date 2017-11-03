import Cancion.*
import Presentacion.*


class MusicoBasico{
	
	
	method cobras (presentacion)
	method tuHabilidad() 
	method interpretasBien(cancion)
	method albumesPublicados()
	method albumesPublicados(albumesP) =self.albumesPublicados().addAll(albumesP)
	method sosMinimalista() = self.albumesPublicados().all({album => album.cacionesSonCortas()})
	method cancionesContienen(palabra) {
		const cancionesQueCumplen = #{}
		self.albumesPublicados().forEach({album=>cancionesQueCumplen.add(album.cancionesConLaPalabra(palabra))})
		return cancionesQueCumplen
	}
	method duracionObraCompleta() = self.albumesPublicados().sum({album => album.duracion()})
	method cancionMasLarga() = self.albumesPublicados().filter({album => album.cancionMasLarga()})  
	method laPegaste() = self.albumesPublicados().all({album => album.buenaVenta()})
	method esHabilidoso()= self.tuHabilidad()>70
	method publicoUnAlbum()=self.albumesPublicados().size()>=1
	method cualesInterpretasBien(canciones)=canciones.filter({cancion => self.interpretasBien(cancion)})
	method esDeTuAutoria(cancion)= self.albumesPublicados().any({album => album.contenesCancion(cancion)})
	
}
class Musico inherits MusicoBasico{

	var habilidad
	var tipoDeMusico
	var tipoDeArtista 
	var albumes = []
	var tipoDeCobro
	
	constructor (unTipoDeArtista,unTipoDeMusico,unaHabilidad,unosAlbumes,unTipoDeCobro)
	{
		tipoDeArtista =unTipoDeArtista
		tipoDeMusico =unTipoDeMusico
		habilidad = unaHabilidad
		albumes = unosAlbumes
		tipoDeCobro = unTipoDeCobro
	}
	method tipoDeMusico() =tipoDeMusico
	method tipoDeMusico(musico) {
		tipoDeMusico  = musico
	}
	method tipoDeArtista() =tipoDeArtista
	method tipoDeArtista(artista) {
		tipoDeArtista  = artista
	}
	
	method habilidad () =habilidad 
	 method tuHabilidad(habilidadM) {
		habilidad  = habilidadM
	}
	override method tuHabilidad()=self.tipoDeArtista().tuHabilidad(self.habilidad())


	method tipoDeCobro()= tipoDeCobro
	method tipoDeCobro(musico){
		tipoDeCobro = musico
	}
	
	override method interpretasBien(cancion) {
	return	
		self.albumesPublicados().size()>=3||
		self.tuHabilidad()>60 ||
		self.esDeTuAutoria(cancion)||
		self.tipoDeMusico().interpretasBien(cancion)
	}
	
	
	
	override method cobras (presentacion) { 
		 return self.tipoDeCobro().cobras(presentacion,self)
		}
	
	override method albumesPublicados()= albumes
	method palabra(unaPalabra){self.tipoDeMusico().cambiarPalabra(unaPalabra)}
	
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
	method tuHabilidad(habilidad)= habilidad +  self.puntosHabilidad()
	method interpretasBien(cancion)= cancion.duracionCancion()>duracion
}

class Imparero inherits Larguero{
	override method tuHabilidad(habilidad) = habilidad
	override method interpretasBien(cancion)=cancion.duracionCancion().odd()
}

class VocalistaPopular {
  method tuHabilidad(habilidad) = habilidad
} 
 
class MusicoDeGrupo{
   const puntosHabilidad 
  constructor(unosPuntosHabilidad)
  {
    puntosHabilidad=unosPuntosHabilidad 
  } 
  method puntosHabilidad()=puntosHabilidad  
  method tuHabilidad(habilidad) = habilidad +  self.puntosHabilidad()
}
 
class CobroSegunCantidadArtistas{
	const cobroSolo
	constructor(unCobroSolo)
	{
		cobroSolo=unCobroSolo
	}
	method cobro()=cobroSolo
	method cobras(presentacion,musico)=if (presentacion.unicoArtista(musico))  self.cobro() else  self.cobro()/2
	
}

class CobroSegunCapacidad{
	const cobro
	const cantPersonas
	constructor(unCobro,unaCantPersonas)
	{
		cobro=unCobro
		cantPersonas=unaCantPersonas
	}
	method cobro()=cobro
	method cantPersonas()=cantPersonas
	method cobras(presentacion,musico)=if (presentacion.capacidadPresentacion()>self.cantPersonas())  self.cobro() else  self.cobro()-100
}

class CobroSegunInflacion{
	const cobro
	const fecha
	const porcentajeAdicional
	constructor(unCobro,unaFecha,unPorcentajeAdicional)
	{
		cobro=unCobro
		fecha=unaFecha
		porcentajeAdicional =unPorcentajeAdicional
	}
	method cobro()=cobro
	method fecha()=fecha
	method porcentajeAdicional()=porcentajeAdicional
	method cobras(presentacion,musico)= if (presentacion.fecha()>self.fecha()) return self.cobro()*(1+self.porcentajeAdicional()) else return self.cobro()
}

object luisAlberto inherits MusicoBasico{

	var guitarra = fender
	var albumes=#{}
	
	method guitarra()=guitarra 
	method guitarra(unaguitarra)  {guitarra  = unaguitarra} 
	override method tuHabilidad ()= if ((self.guitarra().valorGuitarra() * 8)<100)  (self.guitarra().valorGuitarra() * 8) else 100
	override method interpretasBien(cancion) = true
	override method albumesPublicados()=albumes
	override method cobras (presentacion)=if(presentacion.fecha() < new Date(01,09,2017))  1000 else  1200
}

object fender{
	method valorGuitarra () = 10
}

object gibson{
	 
	 var estadoRota = false
	method valorGuitarra () =if (self.estadoRota())  5 else  15
	
	method estadoRota()= estadoRota
	method rompete(){ estadoRota = true }
	method arreglate(){ estadoRota = false }
}
 
