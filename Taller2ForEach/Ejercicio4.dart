import 'dart:io';

void main() {
  
  print('Ingrese la fecha en formato dd/mm/aaaa: ');
  var input = stdin.readLineSync();

  var partesFecha = input!.split('/');
  var dia = int.parse(partesFecha[0]);
  var mes = int.parse(partesFecha[1]);
  var anio = int.parse(partesFecha[2]);

  var nombreMes = obtenerNombreMes(mes);


  print('$dia de $nombreMes de $anio');
}


String obtenerNombreMes(int mes) {
  switch (mes) {
    case 1:
      return 'enero';
    case 2:
      return 'febrero';
    case 3:
      return 'marzo';
    case 4:
      return 'abril';
    case 5:
      return 'mayo';
    case 6:
      return 'junio';
    case 7:
      return 'julio';
    case 8:
      return 'agosto';
    case 9:
      return 'septiembre';
    case 10:
      return 'octubre';
    case 11:
      return 'noviembre';
    case 12:
      return 'diciembre';
    default:
      return '';
  }
}
