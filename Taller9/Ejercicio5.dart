import 'dart:io';

void main() {
  
  print('Ingrese el valor de n para generar la serie de Fibonacci:');
  int n = int.parse(stdin.readLineSync().toString());

  List<int> fibonacciSeries = generateFibonacciSeries(n);

  print('Serie de Fibonacci hasta $n:');
  for (int i = 0; i < fibonacciSeries.length; i++) {
    print(fibonacciSeries[i]);
  }
}

List<int> generateFibonacciSeries(int n) {
  List<int> series = [];

  if (n >= 1) {
    series.add(0);
  }
  if (n >= 2) {
    series.add(1);
  }

  for (int i = 2; i < n; i++) {
    int nextNumber = series[i - 1] + series[i - 2];
    if (nextNumber > n) {
      break;
    }
    series.add(nextNumber);
  }

  return series;
}
