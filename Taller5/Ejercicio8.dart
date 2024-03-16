import 'dart:math';
import 'dart:io';

void main() {

  Random random = Random();
  int num1 = random.nextInt(101);
  int num2 = random.nextInt(101);

  int sumaCorrecta = num1 + num2;
  int respuestaUsuario;

  do {
    
    print('Ingrese la suma de $num1 y $num2: ');
    respuestaUsuario = int.parse(stdin.readLineSync().toString());

    
    if (respuestaUsuario == sumaCorrecta) {
      print('¡Respuesta correcta!');
      break; 
    } else {
      print('Respuesta incorrecta. Inténtalo de nuevo.');
    }
  } while (true);
}
