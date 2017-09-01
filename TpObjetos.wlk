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
object vocalistaPopular{
	method tuHabilidad(habilidad) = habilidad
	method interpretasBien(cancion) = ( cancion.duracionCancion() > 300 )
	  

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
	var letra
	var duracion
	 method letra(letraCancion) ={ letra = letraCancion}	
	 method duracionCancion (duracionCancion)= { duracion = duracionCancion}
	
}

/* 

object lunaPark{
	method capacidad() = 9290
}

object laTrastienda {
	var plantaBaja = 400
	var primerPiso = 300
	method capacidad ()= plantaBaja + primerPiso

	//VER COMO AGREGAR LO DE LOS SABADOS 
}
	
	
	object presentacionLunaPark  {
		var sePresentan = [luisAlberto, joaquin, lucia]
		method sePresentan(nuevasPersonas) {sePresentan = nuevasPersonas}
		method getsePresentan() = sePresentan
		method lugar ()= lunaPark
		method fechaPresentacion () =20170420
	}
	object presentacionTrastienda{
		var sePresentan = [luisAlberto, joaquin, lucia]
		method sePresentan(nuevasPersonas) {sePresentan = nuevasPersonas}
		method getsePresentan() = sePresentan
		method lugar ()= laTrastienda
		method fechaPresentacion ()= 20171115
		//method sePresentan (nuevasPersonas) = {sePresentan = nuevasPersonas}
	}


*/
