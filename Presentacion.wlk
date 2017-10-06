import Musico.*
import Banda.*
	class Presentacion{
		
		var sePresentan =[]
		var lugar
		var fecha
		constructor (unLugar,unaFecha){
			lugar=unLugar
			fecha=unaFecha
		}
		
		method sePresentan(nuevasPersonas) {self.sePresentan().addAll(nuevasPersonas)}
		method sePresentan() = sePresentan
		method fecha(nuevaFecha){fecha= nuevaFecha}
		method fecha()=fecha
		method lugar(nuevoLugar){lugar= nuevoLugar}
		method lugar()=lugar
		method agregaMusico(unMusico){self.sePresentan().add(unMusico)}
		method magia() = self.sePresentan().sum({musico => musico.habilidad()})
		}
	
	
object lunaPark{
	method capacidad(fecha) = self.capacidad()
	method capacidad() = 9290
}

object laTrastienda{
	method plantaBaja() = 400
	method primerPiso() = 300
	method capacidad (fecha){
		if(fecha.dayOfWeek()!=6) 
			return self.plantaBaja() + self.primerPiso() 
		else return self.plantaBaja()
		}
	}
	
object primDAmix{
	method capacidad(fecha) = self.capacidad()
	method capacidad() = 150
}object laCueva{
	method capacidad(fecha) = self.capacidad()
	method capacidad() = 14000
}

	


