void main() {
  var numero = 123456; 
  var posicion = 3; 

  var digito = obtenerDigito(numero, posicion);
  print('El dígito en la posición $posicion del número $numero es: $digito');
}


int obtenerDigito(int numero, int posicion) {
  
  var numeroString = numero.toString();

  if (posicion < 1 || posicion > numeroString.length) {
    throw ArgumentError('La posición especificada está fuera del rango.');
  }

  
  var digito = int.parse(numeroString[posicion - 1]);

  return digito;
}
