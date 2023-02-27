/*
Faça um algoritmo em DART calcular o valor da série abaixo:

S = (X^2/1!) + (X^3/2!) + (X^4/3!) + (X^5/4!) + (X^6/3!) + (X^7/2!) + (X^8/1!) + (X^9/2!) + (X^10/3!) + (X^11/4!)...

*/

import 'dart:math';

void main() {
  double x = 2.0; // valor de X
  int n = 11; // número máximo de termos da série
  double resultado = 0.0; // variável para armazenar o resultado

  for (int i = 2; i <= n; i++) {
    if (i % 2 == 0) {
      resultado += pow(x, i) / ((i - 1) * (i - 2));
    } else {
      resultado += pow(x, i) / ((i - 1) * (i - 2) * (i - 3));
    }
  }

  resultado += x; // adiciona o primeiro termo da série
  print(resultado); //KKKKKKK
}
