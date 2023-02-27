import 'dart:io';

void main() {
  List<int> vetor1 = lerVetor();
  List<int> vetor2 = lerVetor();
  List<int> vetor3 = lerVetor();
  List<int> vetor4 = lerVetor();

  List<int> vetor5 = []
    ..addAll(vetor1)
    ..addAll(vetor2)
    ..addAll(vetor3)
    ..addAll(vetor4);

  vetor5.sort();

  print("Vetor resultante ordenado: $vetor5");

  List<int> intercessao = [];
  for (int i = 0; i < vetor1.length; i++) {
    int elemento = vetor1[i];
    if (vetor2.contains(elemento) &&
        vetor3.contains(elemento) &&
        vetor4.contains(elemento)) {
      intercessao.add(elemento);
    }
  }

  print("Vetor de intercessão: $intercessao");
}

List<int> lerVetor() {
  stdout.write("Informe o tamanho do vetor: ");
  int tamanho = int.parse(stdin.readLineSync()!);

  List<int> vetor = [];
  for (int i = 0; i < tamanho; i++) {
    stdout.write("Informe o elemento ${i + 1} do vetor: ");
    int elemento = int.parse(stdin.readLineSync()!);
    vetor.add(elemento);
  }

  return vetor;
}
