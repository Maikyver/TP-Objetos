	class Presentacion{
		
		var sePresentan =[]
		var lugar
		method sePresentan(nuevasPersonas) {sePresentan = nuevasPersonas}
		method getsePresentan() = sePresentan
		method lugar (lugarPresentacion) {lugar = lugarPresentacion}
		method fechaPresentacion (dd,mm,aaaa) = new Date(dd,mm,aaaa)
 	}

object lunaPark{
	method capacidad() = 9290
}

object laTrastienda {
	var plantaBaja = 400
	var primerPiso = 300
	method capacidad (){
		const date = new Date()
		var capacidad
		if(date.dayOfWeek()!=6){
			capacidad= plantaBaja + primerPiso 
			}else{
				capacidad = plantaBaja
		}
	} 
}
	


