import 'dart:io';

void main() {
  
  var informacionPersona = <String, dynamic>{};


  print('Ingrese la información de la persona:');


  print('Nombre: ');
  informacionPersona['Nombre'] = stdin.readLineSync();


  imprimirDiccionario(informacionPersona);

  
  print('Edad: ');
  informacionPersona['Edad'] = int.parse(stdin.readLineSync()!);

  imprimirDiccionario(informacionPersona);

  
  print('Sexo: ');
  informacionPersona['Sexo'] = stdin.readLineSync();

  
  imprimirDiccionario(informacionPersona);

  
  print('Teléfono: ');
  informacionPersona['Teléfono'] = stdin.readLineSync();

  
  imprimirDiccionario(informacionPersona);

  
  print('Correo electrónico: ');
  informacionPersona['Correo electrónico'] = stdin.readLineSync();


  imprimirDiccionario(informacionPersona);
}


void imprimirDiccionario(Map<String, dynamic> diccionario) {
  print('Contenido del diccionario:');
  diccionario.forEach((key, value) {
    print('$key: $value');
  });
  print('-----------------------');
}
