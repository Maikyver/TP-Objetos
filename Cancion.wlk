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
	 
	}