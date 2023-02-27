import 'dart:io';

void main() {
  print("Digite o valor de N:");
  int n = int.parse(stdin.readLineSync()!);

  Map<int, int> numeros = {};
  for (int i = 0; i < n; i++) {
    print("Digite o número inteiro ${i + 1}:");
    int num = int.parse(stdin.readLineSync()!);
    if (numeros.containsKey(num)) {
      numeros[num] = numeros[num]! + 1;
    } else {
      numeros[num] = 1;
    }
  }

  numeros.forEach((key, value) {
    print("$key - $value");
  });
}
