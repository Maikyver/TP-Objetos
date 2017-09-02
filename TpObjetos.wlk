class Musico {
	
	var tipoDeMusico = new VocalistaPopular()
	var habilidad = 0
	const albumes = []
	method tuHabilidad()=tipoDeMusico.tuHabilidad(habilidad)
	
	method tuHabilidad(habilidadM) {
		habilidad  = habilidadM
	} 
	method interpretasBien(cancion) =tipoDeMusico.interpretasBien(cancion)
	
	
	method cobras (presentacion) { 
		 if (presentacion.solista()) return 50 else return 100
		}
	
	method albumesPublicados() = albumes
	
	method sosMinimalista() = self.albumesPublicados().all({cancion => cancion.sosCorta ()})

	method cancionesContienen(palabra) = self.albumesPublicados().cancionesConLaPalabra(palabra)

	method duracionObraCompleta() = self.albumesPublicados().sum({album => album.duracion()})

	method cancionMasLarga() = self.albumesPublicados().filter({album => album.cancionMasLarga()})     //Tiene que ver con la longitud del string asociado a la cancion, dudo que sea con un lenght

	method laPegaste() = self.albumesPublicados().all({album => album.buenaVenta()})      //no estoy demasiado seguro, pero creo que va por este lado
}

class VocalistaPopular {
	method tuHabilidad(habilidad) = habilidad
	method interpretasBien(cancion,palabra) = (cancion.contienePalabra(palabra))  //no estoy demasiado seguro de esto  
} 
class MusicoDeGrupo{
	method tuHabilidad(habilidad) = habilidad + 5 
	method interpretasBien(cancion) = null
}


 
object luisAlberto {

	var guitarras = [fender, gibson]  
	
	method habilidad (guitarra, estado) {
		if (guitarra.valorGuitarra(estado) * 8<100) 
		
			return guitarra.valorGuitarra(estado) * 8
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
	method rompete()={ estadoRota = true }
	method arreglate()={ estadoRota = false }
}
 

class Cancion{
	var tituloPrincipal
	var letra 
	var duracion
	constructor (tituloPrincipalAlbum,letraCancion, duracionCancion)
	{
		letra = letraCancion
		duracion = duracionCancion
		tituloPrincipal =tituloPrincipalAlbum
	}
	method letra() = letra	
	method duracionCancion ()= duracion 
	method contienePalabra(palabra){
	 	return self.letra().words().contains(palabra)
	 }
	 method sosCorta ()= self.duracionCancion()<180 
	}
class Album{
	
	const titulo
	const canciones 
	const fechaLanzamiento
	const unidadesALaVenta
	const unidadesVendidas
	constructor (tituloA,cancionesA,fechaLanzamientoA,unidadesALaVentaA, unidadesVendidasA)
	{
		titulo =tituloA
		canciones = cancionesA
		fechaLanzamiento =fechaLanzamientoA
		unidadesALaVenta =unidadesALaVentaA
		unidadesVendidas =unidadesVendidasA
	}
	method titulo() =titulo
	method canciones() =canciones
	method fechaLanzamiento()=fechaLanzamiento
	method unidadesALaVenta()=unidadesALaVenta
	method unidadesVendidas()=unidadesVendidas
	method duracion()=self.canciones().sum({cancion => cancion.duracionCancion()})
	method cancionMasLarga()=self.canciones().max({cancion => cancion.letra().lenght()})
	method cancionesConLaPalabra(palabra) = self.canciones().filter({cancion =>cancion.contienePalabra(palabra)})
	method buenaVenta()= self.unidadesALaVenta() / self.unidadesVendidas() >= 0.75
}


 

object lunaPark{
	method capacidad() = 9290
}

object laTrastienda {
	var plantaBaja = 400
	var primerPiso = 300
	method capacidad ()={
		const date = new Date()
		var capacidad
		if(date.dayOfWeek()!=6){
			capacidad= plantaBaja + primerPiso 
			}else{
				capacidad = plantaBaja
		}
	} 
}
	
	class Presentacion{
		
		var sePresentan =[]
		var lugar
		method sePresentan(nuevasPersonas) {sePresentan = nuevasPersonas}
		method getsePresentan() = sePresentan
		method lugar (lugarPresentacion) {lugar = lugarPresentacion}
		method fechaPresentacion (dd,mm,aaaa) = new Date(dd,mm,aaaa)
 	}

