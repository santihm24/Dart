void main() {
  var n = 1; 
  var m = 5; 

  for (var i = n; i <= m; i++) {
    var cubo = calcularCubo(i);
    print('El cubo de $i es $cubo');
  }
}

int calcularCubo(int numero) {
  return numero * numero * numero;
}
