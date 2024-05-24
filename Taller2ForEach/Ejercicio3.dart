import 'dart:io';

void main() {

  var preciosFrutas = {
    'manzana': 2.500,
    'banana': 1.800,
    'naranja': 2.000,
    'uva': 3.500,
    'pera': 2.200,
  };

  print('Ingrese el nombre de la fruta: ');
  var fruta = stdin.readLineSync()!.toLowerCase(); 
  print('Ingrese el número de kilos: ');
  var kilos = double.parse(stdin.readLineSync()!);


  if (preciosFrutas.containsKey(fruta)) {
    var precioTotal = preciosFrutas[fruta]! * kilos;
    print('El precio de $kilos kilos de $fruta es: $precioTotal');
  } else {
    print('La fruta ingresada no está en el diccionario.');
  }
}
