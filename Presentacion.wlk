import Musico.*
	class Presentacion{
		
		var sePresentan =[]
		var lugar
		method sePresentan(nuevasPersonas) {sePresentan = nuevasPersonas}
		method getsePresentan() = sePresentan
		method lugar (lugarPresentacion) {lugar = lugarPresentacion}
		method fechaPresentacion (dd,mm,aaaa) = new Date(dd,mm,aaaa)
		method agregaMusico(unMusico){
		self.getsePresentan().add(unMusico)
	}
		
 	}

object lunaPark{
	method capacidad() = 9290
}

object laTrastienda {
	method plantaBaja() = 400
	method primerPiso() = 300
	method capacidad (){
		const date = new Date()
		var capacidad
		if(date.dayOfWeek()!=6){
			capacidad= self.plantaBaja() + self.primerPiso() 
			}else{
				capacidad = self.plantaBaja()
		}
	}
	}


	


