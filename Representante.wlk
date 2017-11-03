
class Representante{
	const bandaARepresentar 
	
	constructor (unaBanda)
	{
		bandaARepresentar= unaBanda
		
	}
	method unaBanda()=bandaARepresentar
	}

class RepresentanteCobroFijo inherits Representante{
	
	const cobro
	constructor (unCobro, unaBanda)= super(unaBanda)
	{
		cobro= unCobro
	}
	
	method cobras(presentacion)=cobro
	
}
class RepresentanteCobroPorcentaje inherits Representante {
	const porcentaje
	constructor (unPorcentaje, unaBanda)= super(unaBanda)
	{
		porcentaje= unPorcentaje
		
	}
	
	method porcentaje()=porcentaje
	method tusMusicosCobran(presentacion)=self.unaBanda().sum({musico => musico.cobras(presentacion)})
	method cobras(presentacion)=self.tusMusicosCobran(presentacion)*self.porcentaje()
}