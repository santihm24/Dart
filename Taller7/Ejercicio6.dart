import 'dart:io';

void main() {
  print('Elige un candidato:');
  print('A - Candidato A por el partido rojo');
  print('B - Candidato B por el partido verde');
  print('C - Candidato C por el partido azul');

  String opcion = stdin.readLineSync().toString();

  switch (opcion.toUpperCase()) {
    case 'A':
      print('Usted ha votado por el partido rojo.');
      break;
    case 'B':
      print('Usted ha votado por el partido verde.');
      break;
    case 'C':
      print('Usted ha votado por el partido azul.');
      break;
    default:
      print('Opción errónea.');
  }
}
