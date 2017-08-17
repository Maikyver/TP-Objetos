object joaquin {
	
	const grupo = "pimpinela"
	var habilidad = 20
	var cobra=0
	method tuHabilidad() = habilidad
	
	method tuHabilidadSiCantasEnGrupo() {
	habilidad = habilidad + 5 }
	
	method interpretasBien(duracionCancion) = ( duracionCancion > 300 )
	
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
	
	method tuHabilidadSiCantasEnGrupo() {
	habilidad = habilidad - 20 }
	
	//method interpretasBien() = 
	
	method cobrasSegunConcurrencia (duracionPresentacion, concurrencia) { 
		
		 if (concurrencia>5000)
		cobra =500
		else
		cobra =400
		  
	}
}

object luisAlberto {

	var guitarras = [fender, gibson]  

	method habilidad () = valorGuitarra() * 8
	
	method interpretasBien() = True
	
	method cobras () = 
}

object fender{
	method valorGuitarra () = 10
}

object gibson{
	method valorGuitarra () = 15
	
	method estasRota () {
	valorGuitarra () = 5
	}
	
}


object cisne {
	var duracionCancion = 312
	const letra = "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y 
	puedo ver que solo estallan las hojas al brillar"
}

object laFamilia {
	var duracionCancion = 264
	const letra = "Quiero brindar por mi gente sencilla, por el amor brindo por la familia"
}

object presentacion {}
