import 'dart:io';

void main(){
Map<int, int> facturas = {1: 10000, 2: 30000, 3: 50000};
int sum = 0;
print("Ingrese la opcion");
print("1 Añadir una nueva factura");
print("2 Pagar una factura");
print("3 Terminar");
print(facturas);
int opcion = int.parse(stdin.readLineSync().toString());
switch (opcion) {
  case 1:

  print("Añadir una nueva factura");
  print("Ingrese el numero de la factura");
  int numfac = int.parse(stdin.readLineSync().toString());
  print("Ingrese el valor de la factura");
  facturas[numfac] = int.parse(stdin.readLineSync().toString());
  print(facturas);
  facturas.forEach((key, value) {
    
    sum = sum + value;
  });
  print("El valor por pagar $sum");
  break;

  case 2:

  print("Pagar es una factura");
  print("Ingrese el numero de la factura que desea borrar");
  int numfac = int.parse(stdin.readLineSync().toString());
  facturas.remove(numfac);
  print(facturas);
  facturas.forEach((key, value) {
    sum = sum + value;
  });
  print("El valor a pagar es: $sum");
  break;

  case 3:

  print("Terminar");
  break;
  
  default:
  
  print("No existe esa opcion");
  break;

}

}