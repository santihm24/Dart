import 'dart:io';

void main() {

  print('Ingrese el número de pasajeros:');
  int numeroPasajeros = int.parse(stdin.readLineSync().toString());

  print('Ingrese el valor del pasaje:');
  double valorPasaje = double.parse(stdin.readLineSync().toString());

  double gananciaConductor;
  if (numeroPasajeros < 300) {
    gananciaConductor = 0; 
  } else if (numeroPasajeros <= 500) {
    gananciaConductor = (valorPasaje * numeroPasajeros) * 0.20; 
  } else {
    gananciaConductor = (valorPasaje * numeroPasajeros) * 0.30; 
  }

  print('La ganancia del conductor es: \$$gananciaConductor');
}
