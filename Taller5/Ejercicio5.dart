import 'dart:io';

void main(){

void main(){
  int i = 1;
  int sum = 0;

print('Digite el primer numero a calcular: ');
int num1 = int.parse(stdin.readLineSync().toString());

print('Digite el segundo numero a calcular: ');
int num2 = int.parse(stdin.readLineSync().toString());



  while (i<=num2){

  sum = sum + i;
  i++;

 }
 print('La suma de los numeros desde 1 hasta $num es: $sum');
}
}