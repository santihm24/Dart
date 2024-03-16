import 'dart:io';

void main() {
  
  print('Ingrese la cantidad de horas trabajadas:');
  int horasTrabajadas = int.parse(stdin.readLineSync().toString());

  print('Ingrese el valor por hora:');
  double valorPorHora = double.parse(stdin.readLineSync().toString());

  
  double salarioRegular = horasTrabajadas * valorPorHora;

  
  double salarioHorasExtras = 0;
  if (horasTrabajadas > 40) {
    int horasExtras = horasTrabajadas - 40;
    double valorPorHoraExtra = valorPorHora * 1.5; 
    salarioHorasExtras = horasExtras * valorPorHoraExtra;
  }

  double salarioTotal = salarioRegular + salarioHorasExtras;

  print('El salario total del trabajador es: \$${salarioTotal.toStringAsFixed(2)}');
}
