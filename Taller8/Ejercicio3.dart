import 'dart:io';

void main() {
  
  print('Ingrese el lado 1 del triángulo:');
  double lado1 = double.parse(stdin.readLineSync().toString());

  print('Ingrese el lado 2 del triángulo:');
  double lado2 = double.parse(stdin.readLineSync().toString());

  print('Ingrese el lado 3 del triángulo:');
  double lado3 = double.parse(stdin.readLineSync().toString());

  if (lado1 == lado2 && lado2 == lado3) {
    print('El triángulo es equilátero.');
  } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print('El triángulo es isósceles.');
  } else {
    print('El triángulo es escaleno.');
  }
}
