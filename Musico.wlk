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
		if (self.habilidad()<70){
			throwException "el musico no puede participar si posee menos de 70 puntos de habilidad"
		}
	}
	
	method publicoUnAlbum(){
		if (self.albumesPublicados().size()<1){
			throwException "el musico debe haber publicado al menos un album de su autoria"
		}
	}
	
	method puedePresentarse() {
		return self.esHabilidoso() and self.publicoUnAlbum() and self.interpretasBien(cancion)
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

	
	method tuHabilidad (guitarra) {
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
 
