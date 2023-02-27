import 'dart:math';

void main() {
  int n = 4;
  double soma = 0.0;

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

    n += 4;
  }

  print('O valor da série é $soma');
}
