import 'dart:io';

void main() {

  print('Ingrese su puntuación:');
  int puntuacion = int.parse(stdin.readLineSync().toString());

  
  String nivel;
  int cantidadDinero;

  if (puntuacion < 0 || puntuacion > 100) {
    print('Puntuación inválida. La puntuación debe estar entre 0 y 100.');
    return;
  } else if (puntuacion < 20) {
    nivel = 'Inaceptable';
    cantidadDinero = 0;
  } else if (puntuacion < 40) {
    nivel = 'Regular';
    cantidadDinero = 200000 * puntuacion;
  } else if (puntuacion < 60) {
    nivel = 'Aceptable';
    cantidadDinero = 200000 * puntuacion;
  } else if (puntuacion < 80) {
    nivel = 'Sobresaliente';
    cantidadDinero = 200000 * puntuacion;
  } else {
    nivel = 'Excelente';
    cantidadDinero = 200000 * puntuacion;
  }

  print('Nivel de rendimiento: $nivel');
  if (cantidadDinero == 0) {
    print('¡Llamado de atención! Su puntuación es inaceptable.');
  } else {
    print('Cantidad de dinero a recibir: \$$cantidadDinero');
  }
}
