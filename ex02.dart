/*
Faça um algoritmo em DART calcular o valor da série abaixo:

S = (3^4!/5) + (5^8!/10) + (7^12!/15) + (9^16!/20) + (11^20!/25) - (13^24!/30) + (15^28!/35) ...

*/
import 'dart:math';

void main() {
  int n = 4; // inicializando o valor de n como 4
  double soma = 0.0; // inicializando a soma como zero

  for (int i = 3; i <= 15; i += 2) {
    int fatorial = 1;
    for (int j = 1; j <= n; j++) {
      fatorial *= j;
    }

    double termo = pow(i, fatorial) / ((n + 1) * 1.0);
    if (n % 2 == 0) {
      soma += termo;
    } else {
      soma -= termo;
    }

    n += 4; // incrementando o valor de n a cada iteração
  }

  print('O valor da série é $soma');
}
