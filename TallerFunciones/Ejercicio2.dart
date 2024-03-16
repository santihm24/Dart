void main() {

  var n = 5; 
  
  var sumaImpares = calcularSumaImpares(n);
  print('La suma de los primeros $n números enteros impares es: $sumaImpares');
}

int calcularSumaImpares(int n) {
  var suma = 0;
  var contador = 0;
  var numero = 1; 

  while (contador < n) {
    suma += numero;
    numero += 2;
    contador++;
  }

  return suma;
}
