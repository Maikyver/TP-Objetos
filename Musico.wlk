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
	method sosMinimalista() = self.albumesPublicados().all({cancion => cancion.sosCorta ()})

	method cancionesContienen(palabra) = self.albumesPublicados().cancionesConLaPalabra(palabra)

	method duracionObraCompleta() = self.albumesPublicados().sum({album => album.duracion()})

	method cancionMasLarga() = self.albumesPublicados().filter({album => album.cancionMasLarga()})     

	method laPegaste() = self.albumesPublicados().all({album => album.buenaVenta()})
}

class VocalistaPopular {
	var interpretasBienPalabra 
	method interpretasBien()=interpretasBienPalabra 
	method interpretasBien(palabra)  {interpretasBienPalabra  = palabra} 
	method tuHabilidad(habilidad) = habilidad
	
	method interpretasBienLaCancion(cancion) = cancion.contienePalabra(self.interpretasBien())
} 
class MusicoDeGrupo{
	var interpretasBienPalabra 
	method interpretasBien()=null
	method interpretasBien(palabra)=null
	method tuHabilidad(habilidad) = habilidad + 5 
	method interpretasBienLaCancion(cancion) =null
}


