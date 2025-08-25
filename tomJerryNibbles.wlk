object tom {
  var energia = 50
  var ultimoRatonComido = null
  var metrosRecorridos = 0
  
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