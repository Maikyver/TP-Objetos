
class Representante{
	const bandaARepresentar 
	
	constructor (unaBanda)
	{
		bandaARepresentar= unaBanda
		
	}
	method unaBanda()=bandaARepresentar
	method cobras(presentacion)
	}

class RepresentanteCobroFijo inherits Representante{
	
	const cobro
	constructor (unCobro, unaBanda)= super(unaBanda)
	{
		cobro= unCobro
	}
	
	override method cobras(presentacion)=cobro
	
}
class RepresentanteCobroPorcentaje inherits Representante {
	const porcentaje
	constructor (unPorcentaje, unaBanda)= super(unaBanda)
	{
		porcentaje= unPorcentaje
		
	}
	
	method porcentaje()=porcentaje
	method tusMusicosCobran(presentacion)=self.unaBanda().sum({musico => musico.cobras(presentacion)})
	override method cobras(presentacion)=self.tusMusicosCobran(presentacion)*self.porcentaje()
}