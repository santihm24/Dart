import 'dart:html';

void main(){
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  List<int> inverso = numeros.reversed.toList();

  inverso.forEach((x){
    print(' $x');
  });
}