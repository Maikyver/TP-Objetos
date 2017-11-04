class Cancion{
	const titulo
	const letra 
	const duracion
	constructor (tituloAlbum,letraCancion, duracionCancion)
	{
		letra = letraCancion
		duracion = duracionCancion
		titulo =tituloAlbum
	}
	method titulo() = titulo
	method tuTamanioDeTitulo()= self.titulo().size()	
	method letra() = letra
	method tuTamanioDeLetra()= self.letra().size() 
	method duracionCancion ()= duracion
	method contienePalabra(palabra){
	 	return self.letra().toLowerCase().words().contains(palabra)
	 }
	 
	 method sosCorta ()= self.duracionCancion()<180 
	method extencionLetra()= self.letra().words().size()
	 method mashupeateCon(unasCanciones){
	 	const unacancion =new Cancion(self.titulo() , self.letra(),self.duracionCancion())
	 	unasCanciones.forEach({cancion =>unacancion.letra(cancion.letra() +" "+ unacancion.letra() )})
	 	unasCanciones.forEach({cancion =>unacancion.duracionCancion(unacancion.comparaTuDuracionCon(cancion))})
			return unacancion
	}
	 }