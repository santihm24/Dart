import 'dart:io';

void main(){
  int i = 1;
  int sum = 0;

print('Digite su numero');
int num = int.parse(stdin.readLineSync().toString());
  while (i <= num){

  sum = sum + i;
  i++;

 }
 print('La suma de los numeros desde 1 hasta $num es: $sum');
}
