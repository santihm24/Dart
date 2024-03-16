import 'dart:io';

void main() {
  
  String usuarioCorrecto = 'usuario';
  String contrasenaCorrecta = 'contraseña';

  
  int intentos = 0;

  
  do {
    
    print('Ingrese su usuario:');
    String usuarioIngresado = stdin.readLineSync().toString();

    print('Ingrese su contraseña:');
    String contrasenaIngresada = stdin.readLineSync().toString();

    
    if (usuarioIngresado == usuarioCorrecto && contrasenaIngresada == contrasenaCorrecta) {
      print('¡Bienvenido, $usuarioCorrecto!');
      break; 
    } else {
      print('Usuario o contraseña incorrectos.');
      intentos++;

  
      if (intentos >= 2) {
        print('Ha excedido el número de intentos permitidos.');
        break; 
      }
    }
  } while (true);
}
