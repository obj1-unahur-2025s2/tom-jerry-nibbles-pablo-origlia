object tom {
  var energia = 50
  var ultimoRatonComido = null
  var metrosRecorridos = 0
  
  method puedeCazarALaDistancia(unaDistancia) = (unaDistancia / 2) <= energia
  
  method cazarA_SiPuede(unRaton, unaDistancia) {
    if (self.puedeCazarALaDistancia(unaDistancia)) self.cazarA(unRaton, unaDistancia)
  }
  
  method cazarA(unRaton, unaDistancia) {
    self.correr(unaDistancia)
    self.comer(unRaton)
  }
  
  method ultimoRatonComido() = ultimoRatonComido
  
  method metrosRecorridos() = metrosRecorridos
  
  method velocidadMaxima() = 5 + (energia / 10)
  
  method comer(unRaton) {
    energia = (energia + 12) + unRaton.peso()
    ultimoRatonComido = unRaton
  }
  
  method correr(cantidadDeMetros) {
    energia -= cantidadDeMetros / 2
    metrosRecorridos = cantidadDeMetros
  }
}

object jerry {
  var edad = 2
  
  method peso() = edad * 20
  
  method cumplirAnio() {
    edad += 1
  }
}

object nibbles {
  method peso() = 35
} // Inventar otro ratón// Inventar otro ratón