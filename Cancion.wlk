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
	 	return self.letra().words().contains(palabra)
	 }
	 method sosCorta ()= self.duracionCancion()<180 
	}