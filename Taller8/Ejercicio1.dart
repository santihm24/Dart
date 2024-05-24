import 'dart:io';

void main() {

  print('Ingrese la cantidad de docenas de productos a comprar:');
  int cantidadDocenas = int.parse(stdin.readLineSync().toString());

  double precioUnitario = 100.000; 

  double montoCompra = cantidadDocenas * 12 * precioUnitario; 

  double descuento;
  if (cantidadDocenas > 3) {
    descuento = 0.15; 
  } else {
    descuento = 0.10; 
  }

  double montoDescuento = montoCompra * descuento;

  double montoPagar = montoCompra - montoDescuento;


  int unidadesObsequio = 0;
  if (cantidadDocenas > 3) {
    unidadesObsequio = cantidadDocenas - 3;
  }

  print('Monto de la compra: \$$montoCompra');
  print('Monto del descuento: \$$montoDescuento');
  print('Monto a pagar: \$$montoPagar');
  print('Número de unidades de obsequio: $unidadesObsequio');
}
