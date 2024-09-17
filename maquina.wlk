object maquina {
  var registroProduccion = []

  method asignar(unaColeccion){
    registroProduccion = unaColeccion
  }

  method algunDiaSeProdujo(cantidad){
    return registroProduccion.contains(cantidad)
  }
  method maximoValorDeProduccion(){
    return registroProduccion.max()
  }

  method valoresDeProduccionPares(){
   return registroProduccion.filter({n => n.even()})
  }

  method produccionEsAcotada(n1,n2){
    return registroProduccion.all({n=> n.between(n1, n2)})
  }

  method produccionesSuperioresA(cuanto){
    return registroProduccion.filter({n => n > cuanto})
  }

  method produccionesSumando(n){
    return registroProduccion.map({i => n + i})
  }

  method totalProducido(){
    return registroProduccion.sum()
  }

  method ultimoValorDeProduccion(){
    return registroProduccion.last()
  }

  method cantidadProduccionesMayorALaPrimera(){
    return registroProduccion.filter({n => n > registroProduccion.first()})
  }

}