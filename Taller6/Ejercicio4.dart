import 'dart:io';

void main() {
  
  print('Ingrese el primer número:');
  double numero1 = double.parse(stdin.readLineSync().toString());

  print('Ingrese el segundo número:');
  double numero2 = double.parse(stdin.readLineSync().toString());

  print('Ingrese el tercer número:');
  double numero3 = double.parse(stdin.readLineSync().toString());

  List<double> numeros = [numero1, numero2, numero3];

  numeros.sort();

  print('Los números ordenados de menor a mayor son: $numeros');
}
