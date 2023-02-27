import 'dart:io';

void main() {
  stdout.write("Digite o tamanho dos vetores: ");
  int n = int.parse(stdin.readLineSync()!);

  stdout.write("Digite os elementos do primeiro vetor, separados por espaço: ");
  List<int> vetor1 = stdin
      .readLineSync()!
      .split(" ")
      .map((element) => int.parse(element))
      .toList();

  stdout.write("Digite os elementos do segundo vetor, separados por espaço: ");
  List<int> vetor2 = stdin
      .readLineSync()!
      .split(" ")
      .map((element) => int.parse(element))
      .toList();

  List<int> vetor3 = [];
  int i = 0, j = 0;
  while (i < n && j < n) {
    if (vetor1[i] < vetor2[j]) {
      vetor3.add(vetor1[i]);
      i++;
    } else {
      vetor3.add(vetor2[j]);
      j++;
    }
  }
  while (i < n) {
    vetor3.add(vetor1[i]);
    i++;
  }
  while (j < n) {
    vetor3.add(vetor2[j]);
    j++;
  }

  print("Terceiro vetor ordenado: $vetor3");
}
