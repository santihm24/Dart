import 'dart:io';

void main() {
  List<String> abecedario = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f,',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];

  for(int i = 0 ; i < abecedario.length; i++){
  if(i % 2 == 0 && i > 0){
    abecedario.remove(abecedario[i]);
  }
}
abecedario.forEach((x){
    print(' $x');
  });

}


