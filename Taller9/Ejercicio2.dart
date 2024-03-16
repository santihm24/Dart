import 'dart:io';

void main() {
  String contrasena;
  
  do {
   
    print('Ingrese la contraseña:');
    contrasena = stdin.readLineSync().toString();

    
    if (contrasena != "1234") {
      print('Contraseña incorrecta. Inténtelo de nuevo.');
    }
  } while (contrasena != "1234");

  print('¡Bienvenido!');
}
