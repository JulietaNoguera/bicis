

class Deposito{
	var coleccionBici=[	]
	
	method agregarBiciAlDeposito(bici){ coleccionBici.add(bici)}
	method bicisRapidas(){ return coleccionBici.filter({ b => b.velocidadCrucero() > 25 })}
	method marca(){ return coleccionBici.map({ b => b.marca()}).asSet().asList()}
	method esNocturno(){ return coleccionBici.all({ b => b.tieneLuz() })}
	method tieneBiciletaParaLLevar(kg){return coleccionBici.any({ b => b.carga() > kg })}
	method biciMasRapida(){ return coleccionBici.max({ b => b.velocidadCrucero() }).marca()}
	method bicisMasLargas(){return coleccionBici.filter({ b => b.largo() > 170 }) }
	method cargaBicisMasLargas(){ return self.bicisMasLargas().sum({ b=> b.carga()})}
	method bicisSinAccesorios(){return coleccionBici.count({ b=> b.accesorios().isEmpty()})}
	method bicisCompanieras(bici){return coleccionBici.find({ b=> b.marca() == bici.marca() and
		b.largo().between(bici.largo()-10,bici.largo()+10) })}
}
