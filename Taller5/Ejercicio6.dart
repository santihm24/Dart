import 'dart:io';

void main() {
  int contrasena;
  
  while (true) {
     print("Por favor, ingresa tu contraseña: ");
     int contrasena = int.parse(stdin.readLineSync().toString());

    if (contrasena == "1234") {
      print("¡Bienvenido!");
      break;
    } else {
      print("Contraseña incorrecta. Por favor, intenta de nuevo.");
    }
  }
}
