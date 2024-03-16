import 'dart:io';

void main() {
  int num1, num2;

  do {
    
    print('Ingrese el primer número: ');
    num1 = int.parse(stdin.readLineSync().toString());

    print('Ingrese el segundo número: ');
    num2 = int.parse(stdin.readLineSync().toString());

    if (num1 == 0 && num2 == 0) {
      print('Ambos números son 0. Saliendo del programa.');
      break;
    }

    int suma = num1 + num2;
    print('La suma de $num1 y $num2 es: $suma');
  } while (true);
}
