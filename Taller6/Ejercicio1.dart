void main() {
  
  int cantidadHombres = 120; 
  int cantidadMujeres = 80;  

  
  int totalEstudiantes = cantidadHombres + cantidadMujeres;

  
  double porcentajeHombres = (cantidadHombres / totalEstudiantes) * 100;
  double porcentajeMujeres = (cantidadMujeres / totalEstudiantes) * 100;

  
  if (porcentajeHombres > porcentajeMujeres) {
    print('Mayor cantidad de hombres: $porcentajeHombres%');
  } else {
    print('Mayor cantidad de mujeres: $porcentajeMujeres%');
  }
}
