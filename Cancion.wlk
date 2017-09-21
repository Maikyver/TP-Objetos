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
	method titulo() = tituloPrincipal	
	method letra() = letra
	method letra(unaLetra) {letra= unaLetra}
	method duracionCancion ()= duracion
	method duracionCancion(unaCancion) {duracion= unaCancion} 
	method contienePalabra(palabra){
	 	return self.letra().toLowerCase().words().contains(palabra)
	 }
	 method sosCorta ()= self.duracionCancion()<180 
	 
	  method duracionTriple() { self.duracionCancion(self.duracionCancion()*3)}
	 method letraRemixada() { self.letra("mueve tu cuelpo baby " + self.letra() + " yeah oh yeah")}
	 
	 method remixeate(){
	 	const cancion =new Cancion(self.titulo() , self.letra(),self.duracionCancion())
	 	 cancion.duracionTriple() 
	 	  cancion.letraRemixada()
	 	  return cancion
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