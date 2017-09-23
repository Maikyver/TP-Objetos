import Cancion.*
class Musico {
	
	var tipoDeMusico 
	var habilidad = 0
	var albumes = []
	
	constructor (tipoDeMusicoM,habilidadM,albumesM)
	{
		tipoDeMusico =tipoDeMusicoM
		habilidad = habilidadM
		albumes = albumesM
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
		 if (presentacion.solista()) return 50 else return 100
		}
	
	method albumesPublicados() = albumes
	method albumesPublicados(albumesP) =self.albumesPublicados().addAll(albumesP)
	method sosMinimalista() = self.albumesPublicados().all({album => album.cacionesSonCortas()})

	method cancionesContienen(palabra) = self.albumesPublicados().cancionesConLaPalabra(palabra)

	method duracionObraCompleta() = self.albumesPublicados().sum({album => album.duracion()})

	method cancionMasLarga() = self.albumesPublicados().filter({album => album.cancionMasLarga()})     

	method laPegaste() = self.albumesPublicados().all({album => album.buenaVenta()})
	method palabraInterpretaBien(unaPalabra){self.tipoDeMusico().palabra(unaPalabra)}
	
	
	method esHabilidoso(){
		if (self.tuHabilidad()<70){
			throw new Exception("el musico no puede participar si posee menos de 70 puntos de habilidad")
		}
		return true
	}
	
	method publicoUnAlbum(){
		if (self.albumesPublicados().size()<1){
			throw new Exception ("el musico debe haber publicado al menos un album de su autoria")
		}
		return true
	}
	
	method puedePresentarse(){ 
	 self.esHabilidoso() 
	 self.publicoUnAlbum()
	  const cancion = new Cancion("cancion de alicia en el pais","Quién sabe Alicia, este país no estuvo hecho porque sí. Te vas a ir, vas a salir pero te quedas, ¿dónde más vas a ir? Y es que aquí, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabó ese juego que te hacía feliz.",510)
	
	 if (self.tipoDeMusico().interpretasBien(cancion).negate())
	 	throw new Exception("Debe poder cantar 'Canción de Alicia en el Paìs")
	 
	 	}
	}

object vocalistaPopular {
	var palabra 
	method palabra()=palabra 
	method palabra(unaPalabra)  {palabra  = unaPalabra} 
	method tuHabilidad(habilidad) = habilidad
	
	method interpretasBien(cancion) = cancion.contienePalabra(self.palabra())
} 
object musicoDeGrupo{
	method tuHabilidad(habilidad) = habilidad + 5 
	method interpretasBien(cancion) { return cancion.duracionCancion()>300}
}

object luisAlberto {

	var guitarra= fender
	method guitarra()=guitarra 
	method guitarra(unaguitarra)  {guitarra  = unaguitarra} 
	method tuHabilidad (habilidad) {
		if ((guitarra.valorGuitarra() * 8)<100) 
		
			return guitarra.valorGuitarra() * 8
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
 
