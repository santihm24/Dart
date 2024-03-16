void main() {
  
  double poblacionA = 3.5; 
  double poblacionB = 5.0; 

  double tasaCrecimientoA = 0.15;
  double tasaCrecimientoB = 0.07; 

  
  int year = 1980;

  while (poblacionA <= poblacionB) {
    
    poblacionA *= (1 + tasaCrecimientoA);
    poblacionB *= (1 + tasaCrecimientoB);

    
    year++;
  }

  // Imprimir el resultado
  print('En el año $year, la población de la ciudad A ($poblacionA millones) supera a la de la ciudad B ($poblacionB millones).');
}
