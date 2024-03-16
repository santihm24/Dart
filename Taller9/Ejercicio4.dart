import 'dart:math';
import 'dart:io';

void main() {
  Random random = Random();
  int numero1 = random.nextInt(101);
  int numero2 = random.nextInt(101);

  int sumaCorrecta = numero1 + numero2;
  int sumaUsuario;

  do {
    
    print('Calcula la suma de $numero1 y $numero2:');
    sumaUsuario = int.parse(stdin.readLineSync().toString());

    if (sumaUsuario != sumaCorrecta) {
      print('Respuesta incorrecta. Inténtalo de nuevo.');
    }
  } while (sumaUsuario != sumaCorrecta);

  print('¡Respuesta correcta! La suma de $numero1 y $numero2 es $sumaCorrecta.');
}
