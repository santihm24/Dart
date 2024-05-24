void main() {
  var numero = -7; 

  
  determinarPropiedades(numero);
}

void determinarPropiedades(int numero) {
  if (numero > 0) {
    print('$numero es un número positivo.');
  } else if (numero < 0) {
    print('$numero es un número negativo.');
  } else {
    print('$numero es igual a cero.');
  }

  if (numero % 2 == 0) {
    print('$numero es un número par.');
  } else {
    print('$numero es un número impar.');
  }
}
