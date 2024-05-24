import 'dart:io';

void main() {
  
  print('Ingrese el nombre de la niñera:');
  String nombreNinera = stdin.readLineSync().toString();

  print('Ingrese la cantidad de horas de servicio prestadas:');
  int horasServicio = int.parse(stdin.readLineSync().toString());

   int TARIFA_BASICA = 20000;
   int TARIFA_PREMIUM = 30000;
   int TARIFA_GOLD = 50000;

   int HE_BASICA = 10;
   int HE_PREMIUM = 15;
   int HE_GOLD = 20;

   int TARIFA_EXTRA_BASICA = 25000;
   int TARIFA_EXTRA_PREMIUM = 40000;
   int TARIFA_EXTRA_GOLD = 60000;

  int montoPagar;
  if (horasServicio <= HE_BASICA) {
    montoPagar = TARIFA_BASICA * horasServicio;
  } else if (horasServicio <= HE_PREMIUM) {
    montoPagar = TARIFA_BASICA * HE_BASICA + TARIFA_EXTRA_BASICA * (horasServicio - HE_BASICA);
  } else if (horasServicio <= HE_GOLD) {
    montoPagar = TARIFA_PREMIUM * horasServicio;
  } else {
    montoPagar = TARIFA_PREMIUM * HE_PREMIUM + TARIFA_EXTRA_PREMIUM * (horasServicio - HE_PREMIUM);
  }

  print('Nombre de la niñera: $nombreNinera');
  print('Monto a pagar: \$$montoPagar');
}
