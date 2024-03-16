import 'dart:io';

void main() {
  int numero1, numero2;
  
  do {

    print('Ingrese el primer número:');
    numero1 = int.parse(stdin.readLineSync().toString());

    print('Ingrese el segundo número:');
    numero2 = int.parse(stdin.readLineSync().toString());

    int suma = numero1 + numero2;
    print('La suma de $numero1 y $numero2 es: $suma');
  } while (numero1 != 0 || numero2 != 0);

  print('Ambos números introducidos son 0. ¡Fin del programa!');
}
