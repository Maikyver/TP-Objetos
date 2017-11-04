

class CriterioParaCompararCanciones {
	method elMasGrande(unasCanciones) = unasCanciones.max({unaCancion => self.tamanio(unaCancion)})
	method tamanio(cancion)
}
object tamanioPorDuracion inherits CriterioParaCompararCanciones {
	override method tamanio(unaCancion) = unaCancion.duracionCancion()
}
object tamanioPorLetra inherits CriterioParaCompararCanciones {
	override method tamanio(unaCancion) = unaCancion.tuTamanioDeLetra()
}
object tamanioPorTitulo inherits CriterioParaCompararCanciones {
	override method tamanio(unaCancion) = unaCancion.tuTamanioDeTitulo()
}