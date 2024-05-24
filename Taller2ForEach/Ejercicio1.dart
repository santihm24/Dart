import 'dart:io';

void main() {
  
  var diccionario = {'Euro': '€', 'Dollar': '\$', 'Yen': '¥'};

  print('Ingrese una divisa: ');
  var divisa =  (stdin.readLineSync().toString());


  var divisaEncontrada = false;
  diccionario.forEach((key, value) {
    if (key.toLowerCase() == divisa.toLowerCase()) {
      print('El símbolo de $divisa es $value');
      divisaEncontrada = true;
    }
  });

  if (!divisaEncontrada) {
    print('La divisa ingresada no está en el diccionario.');
  }
}
