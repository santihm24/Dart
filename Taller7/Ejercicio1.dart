import 'dart:io';

void main() {

  print('Ingrese su edad:');
  int edad = int.parse(stdin.readLineSync().toString());

  print('Ingrese su salario mensual en pesos:');
  double salarioMensual = double.parse(stdin.readLineSync().toString());

  double salarioMinimo = 1300000; 

  double salarioAnual = salarioMensual * 12;

  double porcentajeRenta = 0;
  if (edad > 30 && salarioAnual > (2 * salarioMinimo)) {
    porcentajeRenta = 0.20;
  } else if (edad > 50 && salarioAnual > salarioMinimo) {
    porcentajeRenta = 0.10;
  }


  double renta = salarioAnual * porcentajeRenta;

  if (porcentajeRenta > 0) {
    print('Debe pagar renta.');
    print('El porcentaje de renta a pagar es: ${(porcentajeRenta * 100).toStringAsFixed(2)}%');
    print('El monto a pagar de renta es: \$${renta.toStringAsFixed(2)}');
  } else {
    print('No debe pagar renta.');
  }
}
