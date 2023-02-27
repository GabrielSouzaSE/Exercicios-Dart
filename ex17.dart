import 'dart:io';

void main() {
  List<int> vetor1 = lerVetor();
  List<int> vetor2 = lerVetor();
  List<int> vetor3 = somarVetores(vetor1, vetor2);

  print("Vetor 1: $vetor1");
  print("Vetor 2: $vetor2");
  print("Vetor 3 (soma): $vetor3");
  print("Soma dos elementos de Vetor 3: ${somaVetor(vetor3)}");
}

List<int> lerVetor() {
  stdout.write("Digite os elementos do vetor separados por espaço: ");
  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(" ");
  List<int> vetor = inputList.map(int.parse).toList();
  return vetor;
}

List<int> somarVetores(List<int> vetor1, List<int> vetor2) {
  List<int> vetor3 = [];
  for (int i = 0; i < vetor1.length; i++) {
    vetor3.add(vetor1[i] + vetor2[i]);
  }
  return vetor3;
}

int somaVetor(List<int> vetor) {
  int soma = 0;
  for (int i = 0; i < vetor.length; i++) {
    soma += vetor[i];
  }
  return soma;
}
