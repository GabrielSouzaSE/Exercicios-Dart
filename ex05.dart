import 'dart:io';

void main() {
  int totalRecemNascidos = 0;
  int totalBaixoPeso = 0;
  int totalNormal = 0;
  int totalAltoPeso = 0;
  double maiorPesoFeminino = 0;
  String nomeMaiorPesoFeminino = '';

  while (true) {
    print('Digite o nome do recém-nascido (ou "sair" para encerrar):');
    String nome = stdin.readLineSync()!;

    if (nome.toLowerCase() == 'sair') {
      break;
    }

    print('Digite o sexo do recém-nascido (M ou F):');
    String sexo = stdin.readLineSync()!;
    sexo = sexo.toUpperCase();

    print('Digite o peso do recém-nascido (em kg):');
    double peso = double.parse(stdin.readLineSync()!);

    if (peso <= 2) {
      print('$nome, $sexo, Baixo Peso');
      totalBaixoPeso++;
    } else if (peso <= 4) {
      print('$nome, $sexo, Normal');
      totalNormal++;
    } else {
      print('$nome, $sexo, Alto Peso');
      totalAltoPeso++;
    }

    if (sexo == 'F' && peso > maiorPesoFeminino) {
      maiorPesoFeminino = peso;
      nomeMaiorPesoFeminino = nome;
    }

    totalRecemNascidos++;
  }

  print('Total de recém-nascidos: $totalRecemNascidos');
  print(
      'Total de recém-nascidos com Baixo Peso: $totalBaixoPeso (${(totalBaixoPeso / totalRecemNascidos * 100).toStringAsFixed(2)}%)');
  print(
      'Total de recém-nascidos com Peso Normal: $totalNormal (${(totalNormal / totalRecemNascidos * 100).toStringAsFixed(2)}%)');
  print(
      'Total de recém-nascidos com Alto Peso: $totalAltoPeso (${(totalAltoPeso / totalRecemNascidos * 100).toStringAsFixed(2)}%)');

  if (nomeMaiorPesoFeminino.isNotEmpty) {
    print(
        'Nome do recém-nascido do sexo feminino com o maior peso: $nomeMaiorPesoFeminino');
  }
}
