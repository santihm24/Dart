import 'dart:io';

void main() {

  print('Ingrese la nota del primer taller:');
  double notaTaller1 = double.parse(stdin.readLineSync().toString());

  print('Ingrese la nota del segundo taller:');
  double notaTaller2 = double.parse(stdin.readLineSync().toString());

  print('Ingrese la nota del examen final:');
  double notaExamenFinal = double.parse(stdin.readLineSync().toString());

  double notaFinal = (notaTaller1 * 0.3) + (notaTaller2 * 0.3) + (notaExamenFinal * 0.4);

  print('La nota definitiva del alumno es: $notaFinal');
}
