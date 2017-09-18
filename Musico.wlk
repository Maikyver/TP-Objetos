class Musico {
	
	var tipoDeMusico 
	var habilidad = 0
	var albumes = []
	
	constructor (tipoDeMusicoM,habilidadM,albumesM)
	{
		tipoDeMusico =tipoDeMusicoM
		tipoDeMusico = habilidadM
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

	
	method interpretasBienLaCancion(cancion) =self.tipoDeMusico().interpretasBien(cancion)
	
	
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
}

object vocalistaPopular {
	var interpretasBienPalabra 
	method interpretasBien()=interpretasBienPalabra 
	method interpretasBien(palabra)  {interpretasBienPalabra  = palabra} 
	method tuHabilidad(habilidad) = habilidad
	
	method interpretasBienLaCancion(cancion) = cancion.contienePalabra(self.interpretasBien())
} 
object musicoDeGrupo{
	method interpretasBien()=null
	method interpretasBien(palabra)=null
	method tuHabilidad(habilidad) = habilidad + 5 
	method interpretasBienLaCancion(cancion) =null
}

object luisAlberto {

	
	method tuHabilidad (guitarra) {
		if ((guitarra.valorGuitarra() * 8)<100) 
		
			return guitarra.valorGuitarra() * 8
		else
			return 100
	} 
	
	method interpretasBienLaCancion(cancion) = true
	
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
 
