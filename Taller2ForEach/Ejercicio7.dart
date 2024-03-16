import 'dart:io';

void main() {

  var listaCompra = <String, double>{};
  

  while (true) {
    print('Ingrese el artículo (o "fin" para terminar): ');
    var articulo = stdin.readLineSync();
    if (articulo == 'fin') break;

    print('Ingrese el precio: ');
    var precio = double.parse(stdin.readLineSync()!);

    listaCompra[articulo!] = precio;
  }
  
  print('Lista de la compra:');
  listaCompra.forEach((articulo, precio) {
    print('$articulo - \$${precio.toStringAsFixed(2)}');
  });
  

  var total = listaCompra.values.reduce((value, element) => value + element);
  
  print('Coste total: \$${total.toStringAsFixed(2)}');
}
