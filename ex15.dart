import 'dart:io';

void main() {
  List<double> pesos = []; // vetor que irá armazenar os pesos dos bois

  // leitura do número de bois
  stdout.write("Digite o número de bois na fazenda: ");
  int n = int.parse(stdin.readLineSync()!);

  // leitura dos pesos dos bois e armazenamento no vetor
  for (int i = 0; i < n; i++) {
    stdout.write("Digite o peso do boi ${i + 1}: ");
    double peso = double.parse(stdin.readLineSync()!);
    pesos.add(peso);
  }

  // laço para permitir várias pesquisas
  while (true) {
    // leitura do intervalo de peso desejado
    stdout.write("Digite o intervalo de peso desejado (separado por espaço): ");
    List<String> intervalo = stdin.readLineSync()!.split(" ");
    double pesoMin = double.parse(intervalo[0]);
    double pesoMax = double.parse(intervalo[1]);

    // busca pelos bois com peso dentro do intervalo
    List<int> boisNoIntervalo = [];
    for (int i = 0; i < pesos.length; i++) {
      if (pesos[i] >= pesoMin && pesos[i] <= pesoMax) {
        boisNoIntervalo.add(i + 1);
      }
    }

    // impressão dos resultados da busca
    if (boisNoIntervalo.isEmpty) {
      print("Nenhum boi encontrado com peso dentro do intervalo informado.\n");
    } else {
      print("Bois com peso dentro do intervalo informado:");
      for (int i = 0; i < boisNoIntervalo.length; i++) {
        print("Boi ${boisNoIntervalo[i]}: ${pesos[boisNoIntervalo[i] - 1]}");
      }
      print("");
    }
  }
}
