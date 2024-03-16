void main() {
  var a = 5;
  var b = 10;
  
  print('Antes del intercambio:');
  print('a = $a, b = $b');

  intercambiarValores(a, b);

  print('Después del intercambio:');
  print('a = $a, b = $b');
}

void intercambiarValores(dynamic a, dynamic b) {
  var temp = a;
  a = b;
  b = temp;
}
