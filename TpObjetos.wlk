/*class Musico {
	
	const tipoDeMusico = vocalistaPopular
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
	}

	method albumesPublicados(Musico) = albumes
	method sosMinimalista(Musico) = albumes.all(cancion.duracionCancion() < 180)
	method cancionesContienen(palabra) = albumes.filter(cancion.contienePalabra(palabra))
	method duracionObraCompleta(Musico) = albumes.sum(cancion.duracionCancion())
	method cancionMasLarga(Musico) =     //Tiene que ver con la longitud del string asociado a la cancion, dudo que sea con un lenght
	method laPegaste(Musico) = albumes.all(album.unidadesALaVenta/album.unidadesVendidas >= 0.75)      //no estoy demasiado seguro, pero creo que va por este lado

object vocalistaPopular{
	method tuHabilidad(habilidad) = habilidad
	method interpretasBien(cancion,palabra) = (cancion.contienePalabra(palabra))  //no estoy demasiado seguro de esto  
} 

object musicoDeGrupo{
	method tuHabilidad(habilidad) = habilidad + 5 
	//method interpretasBien(cancion) = null
}*/

/* 
object lucia {

	var habilidad = 70
	const grupo = "pimpinela"
	
	method tuHabilidad() = habilidad
	
	method tuHabilidadSiCantasEnGrupo() =habilidad - 20
	
	method interpretasBien(cancion) =cancion.letra().contains("familia") //VER COMO ES PARA QUE HACEPTE MAYUSCULAS TAMBIEN
	
	method cobras (presentacion) { 
		
		 if (presentacion.lugar().capacidad()>5000)
		return 500
		else
		return 400
		  
	}
}
 
object luisAlberto {

	//var guitarras = [fender, gibson]  

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
	method valorGuitarra (estado) = 10
}

object gibson{
	
	//var valorGuitarra =15
	method valorGuitarra (estado) {
		if (estado =="rota")
		return 5
		else
		return 15
	}
	
	
}
 
*/
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
	 method sosCorta ()= self.duracionCancion()<90 
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
	//method buenaVenta()= self.unidadesVendidas
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

