void main() {

  for (var i = 1; i <= 10; i++) {
    var cuadrado = calcularCuadrado(i);
    print('El cuadrado de $i es $cuadrado');
  }
}

int calcularCuadrado(int numero) {
  return numero * numero;
}
