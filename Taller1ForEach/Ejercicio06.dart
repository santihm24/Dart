import 'dart:io';

void main() {
  List<String> asignaturas = [
    'Matemáticas',
    'Física',
    'Química',
    'Historia',
    'Lengua'
  ];

  List<double> notas = [];
  List materiasPerdidas = [];

  for (String asignatura in asignaturas) {
    stdout.write('Ingresa la nota para $asignatura: ');
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);
    if (nota < 3.0) {
      materiasPerdidas.add(asignatura);
    }
  }

  print('\nCalificaciones del curso:');
  for (int i = 0; i < asignaturas.length; i++) {
    print('En ${asignaturas[i]} has sacado ${notas[i]}');
  }
  print("\n");
  print("las materias perdidas son:");
  for (String asignaturas in materiasPerdidas) {
    print("$asignaturas, ");
  }
}