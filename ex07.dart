import 'dart:math';

void main() {
  double x = 2.0;
  int n = 11;
  double resultado = 0.0;

  for (int i = 2; i <= n; i++) {
    if (i % 2 == 0) {
      resultado += pow(x, i) / ((i - 1) * (i - 2));
    } else {
      resultado += pow(x, i) / ((i - 1) * (i - 2) * (i - 3));
    }
  }

  resultado += x;
  print(resultado);
}
