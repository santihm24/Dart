import 'dart:io';

void main() {

  print('¿Qué tipo de pizza desea?');
  print('1. Vegetariana');
  print('2. No vegetariana');

  int tipoPizza = int.parse(stdin.readLineSync().toString());

  Map<String, int> Ingredientes = {
    'Pimiento': 1000,
    'Tofu': 2000,
    'Champiñones': 3000,
    'Pepperoni': 2000,
    'Jamón': 3000,
    'Salmón': 5000,
  };

  print('Ingredientes adicionales disponibles:');
  Ingredientes.forEach((ingrediente, precio) {
    print('$ingrediente: \$$precio');
  });

  print('Ingrese el ingrediente adicional que desea:');
  String ingredienteElegido = stdin.readLineSync().toString();

  if (!Ingredientes.containsKey(ingredienteElegido)) {
    print('Ingrediente no válido.');
    return;
  }

  int precioBasePizza;
  if (tipoPizza == 1) {

    precioBasePizza = 0;
    print('Pizza: Vegetariana con $ingredienteElegido');
  } else if (tipoPizza == 2) {
  
    precioBasePizza = 0;
    print('Pizza: No vegetariana con $ingredienteElegido');
  } else {
    print('Opción no válida.');
    return;
  }

  int precioIngrediente = Ingredientes(Ingredientes);
  int precioTotal = precioBasePizza + precioIngrediente;

  print('Valor a pagar: \$$precioTotal');
}
