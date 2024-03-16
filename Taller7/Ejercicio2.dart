import 'dart:io';

void main() {

  print('Ingrese su nombre:');
  String nombre = stdin.readLineSync().toString();

  print('Ingrese su sexo (mujer/hombre):');
  String sexo = stdin.readLineSync().toString();

  
  String grupo = '';
  if ((sexo == 'mujer' && nombre.toUpperCase().codeUnitAt(0) < 'N'.codeUnitAt(0)) ||
      (sexo == 'hombre' && nombre.toUpperCase().codeUnitAt(0) > 'M'.codeUnitAt(0))) {
    grupo = 'A';
  } else {
    grupo = 'B';
  }

  print('Usted pertenece al grupo $grupo.');
}
