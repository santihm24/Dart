import 'dart:io';

void main() {
  
  print('Ingrese una cadena de caracteres:');
  var cadena = stdin.readLineSync() ?? '';

  
  var aparicionesVocales = contarAparicionesVocales(cadena);


  print('Número de apariciones de cada vocal:');
  aparicionesVocales.forEach((vocal, cantidad) {
    print('$vocal: $cantidad');
  });
}


Map<String, int> contarAparicionesVocales(String cadena) {
  var aparicionesVocales = {'a': 0, 'e': 0, 'i': 0, 'o': 0, 'u': 0};

  
  cadena = cadena.toLowerCase();

  
  for (var i = 0; i < cadena.length; i++) {
    var caracter = cadena[i];

    
    if (aparicionesVocales.containsKey(caracter)) {
      aparicionesVocales[caracter] = aparicionesVocales[caracter]! + 1;
    }
  }

  return aparicionesVocales;
}
