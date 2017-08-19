object joaquin {
	
	const grupo = "pimpinela"
	var habilidad = 20  
	method tuHabilidad() = habilidad
	
	method tuHabilidadSiCantasEnGrupo()= habilidad + 5 
	
	method interpretasBien(cancion) = ( cancion.duracionCancion() > 300 )  
	
	method cobras (presentacion) { 
		 if (presentacion.sePresentan().size()>1)//Mejorar - Que pàsa si es mayora 1 pero no es el el q esta en la lista
		return 50
		else
		return 100
		}
	}

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
 

object cisne {
	method duracionCancion ()= 312
	method letra () = "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y 
	puedo ver que solo estallan las hojas al brillar"
}

object laFamilia {
	method duracionCancion () = 264
	method letra ()= "Quiero brindar por mi gente sencilla, por el amor brindo por la familia"
}


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
		const sePresentan = [luisAlberto, joaquin, lucia]
		method getsePresentan() = sePresentan
		method lugar ()= lunaPark
		method fechaPresentacion () =20170420
	}
	object presentacionTrastienda{
		const sePresentan = [luisAlberto, joaquin, lucia]
		method getsePresentan() = sePresentan
		method lugar ()= laTrastienda
		method fechaPresentacion ()= 20171115
		//method sePresentan (nuevasPersonas) = {sePresentan = nuevasPersonas}
	}



