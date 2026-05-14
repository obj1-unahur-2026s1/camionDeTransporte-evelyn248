object cosas {
    var cosas = []
}

object knightRider {
	method peso() = 500
	method peligrosidad() = 10
}

object bumblebee {
    var estaComoRobot = false
    method peso() = 800
    method peligrosidad() = if (estaComoRobot) 30 else 15	
	method transformar(unEstado) {
        estaComoRobot = unEstado 
    }	
}

object paqueteDeLadrillos {
	var cantidad = 0
    
    method peso() = cantidad * 2
	method cantidad(unaCantidad) { cantidad = unaCantidad }
	
	method peligrosidad() = 2
}

object arenaAGranel {
	var property peso = 0

    method peso() {return peso}
    method agregarPeso(cantidad) { peso += cantidad }
	method peligrosidad() = 1
}

object bateriaAntiaerea {
	var tieneMisiles = false

    method peso() = if (tieneMisiles) 300 else 200
	method cargarMisiles() {tieneMisiles = true}
	method descargarMisiles() { 
        tieneMisiles = false 
    }	
	method peligrosidad() = if (tieneMisiles) 100 else 0
}

object contenedorPortuario {
	var cosas = []
	
    method agregarCosas(unaCosa) { 
        cosas.add(unaCosa) 
    }
	method peso() = 100 + cosas.sum({ c => c.peso() })
	method peligrosidad() = if (cosas.isEmpty()) 0 else cosas.max({ c => c.peligrosidad() }).peligrosidad()
}

object residuosRadioactivos {
	var property peso = 0
	
    method peligrosidad() = 200
}

object embalajeDeSeguridad {
	var cosaEnvuelta = knightRider
    
    method peso() = cosaEnvuelta.peso()
	method envolver(unaCosa) { cosaEnvuelta = unaCosa }
	
	method peligrosidad() = cosaEnvuelta.peligrosidad()/2
}

