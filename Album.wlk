
class Album{
	
	const titulo
	const canciones 
	const fechaLanzamiento
	const unidadesALaVenta
	const unidadesVendidas
	constructor (tituloA,cancionesA,fechaLanzamientoA,unidadesALaVentaA, unidadesVendidasA)
	{
		titulo =tituloA
		canciones = cancionesA
		fechaLanzamiento =fechaLanzamientoA
		unidadesALaVenta =unidadesALaVentaA
		unidadesVendidas =unidadesVendidasA
	}
	method titulo() =titulo
	method canciones() =canciones
	method fechaLanzamiento()=fechaLanzamiento
	method unidadesALaVenta()=unidadesALaVenta
	method unidadesVendidas()=unidadesVendidas
	method duracion()=self.canciones().sum({cancion => cancion.duracionCancion()})
	method cancionMasLarga()=self.canciones().max({cancion => cancion.letra().lenght()})
	method cancionesConLaPalabra(palabra) = self.canciones().filter({cancion =>cancion.contienePalabra(palabra)})
	method buenaVenta()= self.unidadesALaVenta() / self.unidadesVendidas() >= 0.75
	method cacionesSonCortas() = self.canciones().all({cancion => cancion.sosCorta ()})
}
