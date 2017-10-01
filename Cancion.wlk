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
	method tuTamanioSegunLetra()= self.letra().size() 
	method titulo() = tituloPrincipal	
	method letra() = letra
	method letra(unaLetra) {letra= unaLetra}
	method duracionCancion ()= duracion
	method duracionCancion(unaCancion) {duracion= unaCancion} 
	method contienePalabra(palabra){
	 	return self.letra().toLowerCase().words().contains(palabra)
	 }
	 
	 method sosCorta ()= self.duracionCancion()<180 

	 method mashupeateCon(unasCanciones){
	 	const unacancion =new Cancion(self.titulo() , self.letra(),self.duracionCancion())
	 	unasCanciones.forEach({cancion =>unacancion.letra(cancion.letra() +" "+ unacancion.letra() )})
	 	unasCanciones.forEach({cancion =>unacancion.duracionCancion(unacancion.comparaTuDuracionCon(cancion))})
			return unacancion
	}
	 }