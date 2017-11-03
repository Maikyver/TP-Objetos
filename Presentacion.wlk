import Musico.*
import Banda.*
	class Presentacion{
		
		var sePresentan =#{}
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
		method capacidadPresentacion()=self.lugar().capacidad(self.fecha())
		method agregaMusico(unMusico){self.sePresentan().add(unMusico)}
		method magia() = self.sePresentan().sum({musico => musico.tuHabilidad()})
		method costo() =self.sePresentan().sum({musico => musico.cobras(self)})
		method unicoArtista(musico)= self.sePresentan().contains(musico) && self.sePresentan().size()==1
		}
	
	
object lunaPark{
	method capacidad(fecha) = self.capacidad()
	method capacidad() = 9290
}

object laTrastienda{
	method plantaBaja() = 400
	method primerPiso() = 300
	method capacidad (fecha)= self.plantaBaja() + self.capacidadPorSabado(fecha)
	method capacidadPorSabado(fecha)=if(fecha.dayOfWeek()!=5) self.primerPiso() else 0
	}
	
object primDAmix{
	method capacidad(fecha) = self.capacidad()
	method capacidad() = 150
}object laCueva{
	method capacidad(fecha) = self.capacidad()
	method capacidad() = 14000
}

	


