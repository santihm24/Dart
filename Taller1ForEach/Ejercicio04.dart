import 'dart:io';

void main() {
  List<int> loteria = [];

  for (int i = 1; i <= 7; i++) {
    stdout.write('Ingresa los numero $i de la lotria ganadora : ');
    int numero = int.parse(stdin.readLineSync().toString());
    loteria.add(numero);
  }
  int con = 1;
  loteria.forEach((x) {
    print("El numero $con que dijitaste : $x");
    con++;
  });

  loteria.sort();
  print("los numeros ordenados de menor a mayor en la loteria es: $loteria");
}
