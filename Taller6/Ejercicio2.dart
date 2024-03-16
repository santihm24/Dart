void main() {
  
  List<String> meses = [
    'enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio'
  ];
  
  List<double> descuentos = [
    0.15, 0.15, 0.15, 0.20, 0.20, 0.20
  ];
  
  
  String mes = 'febrero'; 
  double importe = 100.0; 
  
  int indiceMes = meses.indexOf(mes.toLowerCase());
  
  if (indiceMes != -1) {
    double descuento = descuentos[indiceMes];
    
    double importeConDescuento = importe * (1 - descuento);
    
    print('El importe a cobrar al cliente en $mes es: \$${importeConDescuento.toStringAsFixed(2)}');
  } else {
    print('El mes ingresado no es válido.');
  }
}
