import cosas.*

object camion {
    //vaciar despues
    var cosas = [knightRider, bumblebee, paqueteDeLadrillos, arenaAGranel, bateriaAntiaerea, contenedorPortuario, residuosRadioactivos]
    var tara = 1000

//cargar y descargar cosas de a 1
    method cargar(unaCosa) {
      cosas.add(unaCosa)
    }

    method descargar(unaCosa) {
      cosas.remove(unaCosa)
    }

//se necesita saber si todas las COSAS son numero pares
    method pesoTotal() = tara + 
        cosas.sum(
            { c => c.peso() } 
        )

    method pesoEsPar() = cosas.all(
        {c => c.peso()}
        ).even()

    /*
    sum({x=>x.length()})
    */
    

    method excedidoDePeso() = self.pesoTotal() > 3000

    method cosasCargadasEsPar() {
        cosas.all({ c => c.peso().even() })      
    }

    //devuelve un booleano. cualquier objeto que cumpla la condicion
    method hayAlgoQuePesa(unValor) = 
        cosas.any(
            { c => c.peso() == unValor }
        )
    
    //obtener la primer cosa cargada tenga determinada peligrosidad
    method primerCosaConPeligrosidad(nivelPeligrosidad) =
        cosas.find(
            {c => c.peligrosidad()== nivelPeligrosidad}
        )
    

    //lista de cosas que superan un nivel de peligrosidad
    
    method cosasQueSuperanPeligrosidad(nivelPeligrosidad) = 
        cosas.filter(
            { c => c.peligrosidad() > nivelPeligrosidad }
        )
}


