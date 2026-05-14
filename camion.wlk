object camion {
    var cosas = []
    var tara = 1000

    method cargar(unaCosa) {
      cosas.add(unaCosa)
    }

    method descargar(unaCosa) {
      cosas.remove(unaCosa)
    }

    method pesoTotal() = tara + 
        cosas.sum(
            { c => c.peso() }
        )

    method excedidoDePeso() = self.pesoTotal() > 3000

    method cosasCargadasEsPar() {
        cosas.all({ c => c.peso().even() })      
    }

    method hayAlgoQuePesa(unValor) = 
        cosas.any(
            { c => c.peso() == unValor }
        )
    
    method cosasQueSuperanPeligrosidad(nivel) = 
        cosas.filter(
            { c => c.peligrosidad() > nivel }
        )
    
    //Obtener todas las cosas que superan un determinado nivel de peligrosidad.

    method cosasQueSuperanPeligrosidadDe(unaCosa) = 
        self.cosasQueSuperanPeligrosidad(unaCosa.peligrosidad()) //coregir
}



