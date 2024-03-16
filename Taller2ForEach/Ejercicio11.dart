void main() {
  var directorioClientes = '''
nif;nombre;email;teléfono;descuento
01234567L;Luis González;luisgonzalez@mail.com;656343576;12.5
71476342J;Macarena Ramírez;macarena@mail.com;692839321;8
63823376M;Juan José Martínez;juanjo@mail.com;664888233;5.2
98376547F;Carmen Sánchez;carmen@mail.com;667677855;15.7
''';


  var lineas = directorioClientes.trim().split('\n');

  
  var campos = lineas[0].split(';');


  var diccionarioClientes = <String, Map<String, dynamic>>{};


  for (var i = 1; i < lineas.length; i++) {
    var datosCliente = lineas[i].split(';');
    var cliente = <String, dynamic>{};
    for (var j = 0; j < campos.length; j++) {
      cliente[campos[j]] = j == campos.length - 1 ? double.parse(datosCliente[j]) : datosCliente[j];
    }
    diccionarioClientes[datosCliente[0]] = cliente;
  }

  print(diccionarioClientes);
}
