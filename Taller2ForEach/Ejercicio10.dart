import 'dart:io';

void main() {
  var baseDatosClientes = <String, Map<String, dynamic>>{}; 

  while (true) {
    
    print('\nMenú de opciones:');
    print('(1) Añadir cliente');
    print('(2) Eliminar cliente');
    print('(3) Mostrar cliente');
    print('(4) Listar todos los clientes');
    print('(5) Listar clientes preferentes');
    print('(6) Terminar');

    
    print('Elija una opción: ');
    var opcion = int.parse(stdin.readLineSync()!);

    
    switch (opcion) {
      case 1:
        agregarCliente(baseDatosClientes);
        break;
      case 2:
        eliminarCliente(baseDatosClientes);
        break;
      case 3:
        mostrarCliente(baseDatosClientes);
        break;
      case 4:
        listarTodosClientes(baseDatosClientes);
        break;
      case 5:
        listarClientesPreferentes(baseDatosClientes);
        break;
      case 6:
        
        print('¡Hasta luego!');
        return;
      default:
        print('Opción inválida. Por favor, elija una opción del 1 al 6.');
    }
  }
}


void agregarCliente(Map<String, Map<String, dynamic>> baseDatos) {
  print('\nAñadir cliente:');
  var cliente = <String, dynamic>{};

  print('ID del cliente: ');
  var id = stdin.readLineSync()!;
  if (baseDatos.containsKey(id)) {
    print('El cliente ya existe en la base de datos.');
    return;
  }
  cliente['ID'] = id;

  print('Nombre: ');
  cliente['nombre'] = stdin.readLineSync();

  print('Dirección: ');
  cliente['direccion'] = stdin.readLineSync();

  print('Teléfono: ');
  cliente['telefono'] = stdin.readLineSync();

  print('Correo electrónico: ');
  cliente['correo'] = stdin.readLineSync();

  print('¿Es cliente preferente? (s/n): ');
  var respuesta = stdin.readLineSync()!.toLowerCase();
  cliente['preferente'] = respuesta == 's';

  baseDatos[id] = cliente;
  print('Cliente añadido correctamente.');
}


void eliminarCliente(Map<String, Map<String, dynamic>> baseDatos) {
  print('\nEliminar cliente:');
  print('NIF del cliente a eliminar: ');
  var id = stdin.readLineSync()!;
  if (baseDatos.containsKey(id)) {
    baseDatos.remove(id);
    print('Cliente eliminado correctamente.');
  } else {
    print('El cliente no existe en la base de datos.');
  }
}


void mostrarCliente(Map<String, Map<String, dynamic>> baseDatos) {
  print('\nMostrar cliente:');
  print('ID del cliente: ');
  var id = stdin.readLineSync()!;
  if (baseDatos.containsKey(id)) {
    var cliente = baseDatos[id]!;
    print('Datos del cliente:');
    print('ID: ${cliente['ID']}');
    print('Nombre: ${cliente['nombre']}');
    print('Dirección: ${cliente['direccion']}');
    print('Teléfono: ${cliente['telefono']}');
    print('Correo electrónico: ${cliente['correo']}');
    print('Cliente preferente: ${cliente['preferente']}');
  } else {
    print('El cliente no existe en la base de datos.');
  }
}

void listarTodosClientes(Map<String, Map<String, dynamic>> baseDatos) {
  print('\nListar todos los clientes:');
  if (baseDatos.isEmpty) {
    print('No hay clientes en la base de datos.');
  } else {
    baseDatos.forEach((nif, cliente) {
      print('NIF: $nif - Nombre: ${cliente['nombre']}');
    });
  }
}

void listarClientesPreferentes(Map<String, Map<String, dynamic>> baseDatos) {
  print('\nListar clientes preferentes:');
  var preferentes = baseDatos.values.where((cliente) => cliente['preferente'] == true).toList();
  if (preferentes.isEmpty) {
    print('No hay clientes preferentes en la base de datos.');
  } else {
    preferentes.forEach((cliente) {
      print('ID: ${cliente['ID']} - Nombre: ${cliente['nombre']}');
    });
  }
}
