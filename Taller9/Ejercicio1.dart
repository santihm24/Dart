import 'dart:io';

void main() {

  print('Ingrese el primer número positivo:');
  int numero1 = int.parse(stdin.readLineSync().toString());

  print('Ingrese el segundo número positivo:');
  int numero2 = int.parse(stdin.readLineSync().toString());

  if (numero1 <= 0 || numero2 <= 0) {
    print('Debe ingresar números positivos.');
    return;
  }

  int menor = numero1 < numero2 ? numero1 : numero2;
  int mayor = numero1 > numero2 ? numero1 : numero2;


  List<int> numerosPares = [];
  for (int i = menor; i <= mayor; i++) {
    if (i % 2 == 0) {
      numerosPares.add(i);
    }
  }

  if (numerosPares.isEmpty) {
    print('No hay números pares entre $menor y $mayor.');
  } else {
    print('Números pares entre $menor y $mayor:');
    numerosPares.forEach((numero) => print(numero));
  }
}
