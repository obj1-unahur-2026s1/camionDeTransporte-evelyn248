/*
arrancar por el acmion es un cncepto de programacion esstructurada que no enseña a 
absraernos del problema 
*/
object camion {
    var cosas = []
    var tara = 1000

//cargar y descargar cosas de a 1
    method cargar(unaCosa) {
      cosas.add(unaCosa)
    }

//carga.addAll(una lsita de elementos)

    method descargar(unaCosa) {
      cosas.remove(unaCosa)
    }

//se necesita saber si todas las COSAS son numero pares
    method pesoTotal() = tara + //si se que no voy a usar la variable en otro lado, tambien puedo directamente usar el valor 1000
        cosas.sum(
            { c => c.peso() } 
        )

	method pesoEsPar() = self.pesoTotal().even() 
	//este metodo lo que pide es que recorra el peso de cada csa
	//carga.all c=> c.peso().even()

//	method() pesoEsPar()= 
	//even() me devuelve true or false
	//no es necesario agregar true or false


    /*
    sum({x=>x.length()})
    */
    

    method excedidoDePeso() = self.pesoTotal() > 3000

    method cosasCargadasEsPar() {
        cosas.all({ c => c.peso().even() })      
    }

    //devuelve un booleano. cualquier objeto que cumpla la condicion
    method hayAlgoQuePesa(unPeso) = 
        cosas.any(
            { c => c.peso() == unPeso }
        )

	//al trabajar en equipo tengo que saber què hacen mis metodos
	//sin saber la logica interna del metodo
	// 
    
    //obtener la primer cosa cargada tenga determinada peligrosidad
    method primerCosaConPeligrosidad(nivelPeligrosidad) {
        cosas.filter(
            {c => c.peligrosidad()== nivelPeligrosidad}
        ).get(1)
    }

	/*
	la primer cosa de la coleccion que cumpla la coleccion
	usar find
	asume que existe la cosa
	*/


    //lista de cosas que superan un nivel de peligrosidad
    
    method cosasQueSuperanPeligrosidad(nivelPeligrosidad) = 
        cosas.filter(
            { c => c.peligrosidad() > nivelPeligrosidad }
        )
}

method cosasQueSuperanElNivelDePeligrosidadDe(unaCosa) =
	caga.filter(c =>  unacosa.peligrosiadad()) < c.peligrosidad()

//conocer si el camion esta exedido del peso maximo permitido = 2500

method estaExedidoEnPeso() = self.pesoTotal() > 2500

//si el cmion puede circularen ruta
// puedo usar el metodo que me dice si esta exedido. 
//tambien el de mazimo de peligrosidad. 


//----------------------------------------------------------------------------------------
//COSAS
object cosas {
    var cosas = []
}

object knightRider {
	
	method peso() = 500
	method peligrosidad() = 10 //como no s variable, me conviene declararlo drectamente como un metodo.
}

object bumblebee {
    var estaComoRobot = false
    method peso() = 800
    method peligrosidad() = if (estaComoRobot) 30 else 15	
	method transformar(unEstado) {
        estaComoRobot = unEstado 
    }	//para delarar un getter y setter directamente puedo usar var property
		//el uso incorrecto de property esta puntos en el examen

	//no agregar variables de mas.
	//no es correcto agregar una variable para true y una para false

	//tengo que saber si bumblebe esta en estado robot o no. lo ideal seria tener un metodo para que se transforme en auto
	//y uno para que se transforme en auto

	//el nivel de peligro de bumblebee va a depender de si es un robot o un auto
	//si declaro objeto auto y objeto robot, tanto el aut como el robot se tiene que llevar su nivel de peligrosidad

	//recordar que si tengo una variable, tiene que haber un metodo que pueda modificaresa variable
}

object paqueteDeLadrillos {
	var cantidad = 0

	//tambien puedo agregar un objeto ladrillo para ambiar el peso del 
	//ladrillo si la consigna indicara que puede cambiar el peso del ladrillo
	//pensar cada objeto como varia 
    
    method peso() = cantidad * 2
	method cantidadDeLadrillos(unaCantidad) { 
		cantidad = unaCantidad } 

	//se valora mas el no poner property pero tngo que 
	//evaluar donde es necesarrio acceder a la variable desde afuera y donde no.
	//si no necesito el valor de la variable desde fuera del objeto, no agregar metodos que los muestren

	
	method peligrosidad() = 2

	//
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

	//la pista que me hace pensar si el metodo me devuelve un booleano es "si tiene o no msil"
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

