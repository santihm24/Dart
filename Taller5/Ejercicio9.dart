import 'dart:math';
import 'dart:io';
void main() {
  
  print('Ingrese el capital inicial:');
  double capitalInicial = double.parse(stdin.readLineSync().toString());

  
  double tasaIntereses = 0.05;

  double mesesDuplicar = log(2) / log(1 + tasaIntereses);

  print('El capital se duplicará en $mesesDuplicar meses.');
}
