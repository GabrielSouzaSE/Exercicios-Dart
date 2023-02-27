import 'dart:io';

void main() {
  List<double> pesos = [];

  stdout.write("Digite o número de bois na fazenda: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Digite o peso do boi ${i + 1}: ");
    double peso = double.parse(stdin.readLineSync()!);
    pesos.add(peso);
  }

  while (true) {
    stdout.write("Digite o intervalo de peso desejado (separado por espaço): ");
    List<String> intervalo = stdin.readLineSync()!.split(" ");
    double pesoMin = double.parse(intervalo[0]);
    double pesoMax = double.parse(intervalo[1]);

    List<int> boisNoIntervalo = [];
    for (int i = 0; i < pesos.length; i++) {
      if (pesos[i] >= pesoMin && pesos[i] <= pesoMax) {
        boisNoIntervalo.add(i + 1);
      }
    }

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
