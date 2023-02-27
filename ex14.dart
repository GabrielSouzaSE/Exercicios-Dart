import 'dart:io';

void main() {
  // Leitura do tamanho dos vetores
  stdout.write("Digite o tamanho dos vetores: ");
  int n = int.parse(stdin.readLineSync()!);

  // Leitura dos elementos do primeiro vetor
  stdout.write("Digite os elementos do primeiro vetor, separados por espaço: ");
  List<int> vetor1 = stdin
      .readLineSync()!
      .split(" ")
      .map((element) => int.parse(element))
      .toList();

  // Leitura dos elementos do segundo vetor
  stdout.write("Digite os elementos do segundo vetor, separados por espaço: ");
  List<int> vetor2 = stdin
      .readLineSync()!
      .split(" ")
      .map((element) => int.parse(element))
      .toList();

  // Geração do terceiro vetor
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

  // Impressão do terceiro vetor
  print("Terceiro vetor ordenado: $vetor3");
}
