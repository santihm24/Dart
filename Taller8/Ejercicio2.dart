import 'dart:io';

void main() {

   double montoFijo = 300000; 
   double montoAdicional300 = 15000; 
   double montoAdicional1000 = 10000; 
   double porcentajeIVA = 0.20; 

  print('Ingrese la cantidad de kilómetros recorridos:');
  int kilometros = int.parse(stdin.readLineSync().toString());

  double montoAdicional;
  if (kilometros <= 300) {
    montoAdicional = 0;
  } else if (kilometros <= 1000) {
    montoAdicional = (kilometros - 300) * montoAdicional300;
  } else {
    montoAdicional = (700 * montoAdicional300) + ((kilometros - 1000) * montoAdicional1000);
  }

  double montoTotal = montoFijo + montoAdicional;

  double montoIVA = montoTotal * porcentajeIVA;

  double montoAPagar = montoTotal + montoIVA;

  print('El monto a pagar por el alquiler del vehículo es: \$$montoAPagar');
}
