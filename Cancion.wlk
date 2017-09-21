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
	method titulo() = tituloPrincipal	
	method duracionCancion ()= duracion 
	method contienePalabra(palabra){
	 	return self.letra().toLowerCase().words().contains(palabra)
	 }
	 method sosCorta ()= self.duracionCancion()<180 
	 
	 method duracionTriple() = self.duracionCancion()*3
	 method letraRemixada() = "mueve tu cuelpo baby" + self.letra() + "yeah oh yeah"
	 
	 method remixeate(){
	 	return self.duracionTriple() and self.letraRemixada()
	 }
	 method comparaTuDuracionCon(otraCancion){
	 	return if (self.duracionCancion() > otraCancion.duracionCancion()){
	 		return self.duracionCancion()
	 		}
	 		else {return otraCancion.duracionCancion()
	 			
	 		}
	 	}
	  method comparaTuLetraCon(otraCancion){
	 	return if (self.letra().size() > otraCancion.letra().size()){
	 		return self.letra()
	 		}
	 		else {return otraCancion.letra()
	 			
	 		}
	 	}
	  method comparaTuTituloCon(otraCancion){
	 	return if (self.titulo().size() > otraCancion.titulo().size()){
	 		return self.titulo()
	 		}
	 		else {return otraCancion.titulo()
	 			
	 		}
	 	}
	 }