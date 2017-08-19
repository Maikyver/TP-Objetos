object joaquin {
	
	const grupo = "pimpinela"
	var habilidad = 20
	var cobra=0   
	method tuHabilidad() = habilidad
	
	method tuHabilidadSiCantasEnGrupo()= habilidad + 5 
	
	method interpretasBien(cancion) = ( cancion.duracionCancion() > 300 )  
	
	method cobrasSegunSiSosSolistaONo (duracionPresentacion, showSolista) { 
		 if (showSolista)
		cobra =100* duracionPresentacion
		else
		cobra =50* duracionPresentacion
		}
	}

object lucia {

	var habilidad = 70
	const grupo = "pimpinela"
	var cobra=0
	method tuHabilidad() = habilidad
	
	method tuHabilidadSiCantasEnGrupo() =habilidad - 20
	
	method interpretasBien(cancion) =cancion.letra().contains("familia") //VER COMO ES PARA QUE HACEPTE MAYUSCULAS TAMBIEN
	
	method cobrasSegunConcurrencia (duracionPresentacion, concurrencia) { 
		
		 if (concurrencia>5000)
		cobra =500
		else
		cobra =400
		  
	}
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
	
	method cobrasPorFecha (fechaNumeros) {
		if(fechaNumeros < 01092017)
			return 1000
		else
		return 1200
	} 
}

object fender{
	method valorGuitarra (estado) = 10
}

object gibson{
	
	var valorGuitarra =15
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
	var capacidad = 9290
}

object laTrastienda {
	var plantaBaja = 400
	var primerPiso = 300
	var capacidad = plantaBaja + primerPiso

	//VER COMO AGREGAR LO DE LOS SABADOS 
}
	

object presentacion {
	
	method presentacion1 () {
		const sePresentan = [luisAlberto, joaquin, lucia]
		var lugar = lunaPark
		var fechaPresentacion =20042017
	}
	method presentacion2(){
		const sePresentan = [luisAlberto, joaquin, lucia]
		var lugar = laTrastienda
		var fechaPresentacion = 15112017
	}

}

