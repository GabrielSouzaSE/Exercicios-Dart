import 'dart:io';

void main() {
  List<Map<String, dynamic>> candidatos = [];
  int qtdMasculino = 0;
  int qtdFeminino = 0;

  // Leitura dos dados dos candidatos
  while (true) {
    print("Digite o código (FLAG'0000'):");
    String codigo = stdin.readLineSync()!;
    if (codigo == "FLAG'0000'") {
      break;
    }

    print(
        "Digite o curso (CC - Ciência da Computação ou SI - Sistemas de Informação):");
    String curso = stdin.readLineSync()!;

    print("Digite o nome:");
    String nome = stdin.readLineSync()!;

    print("Digite o sexo (M - Masculino ou F - Feminino):");
    String sexo = stdin.readLineSync()!;

    print("Digite a pontuação (0-5000):");
    int pontuacao = int.parse(stdin.readLineSync()!);

    // Armazenamento dos dados do candidato em um Map
    Map<String, dynamic> candidato = {
      "codigo": codigo,
      "curso": curso,
      "nome": nome,
      "sexo": sexo,
      "pontuacao": pontuacao,
    };
    candidatos.add(candidato);

    // Contagem de candidatos por sexo
    if (sexo == "M") {
      qtdMasculino++;
    } else {
      qtdFeminino++;
    }
  }

  // Impressão das informações desejadas

  // a) O Código, nome e pontuação dos candidatos independentes do sexo para o curso de Ciência da Computação que fizeram mais de 2500 pontos.
  List<Map<String, dynamic>> a = candidatos
      .where((c) => c["curso"] == "CC" && c["pontuacao"] > 2500)
      .toList();
  print(
      "\nCandidatos do curso de Ciência da Computação que fizeram mais de 2500 pontos:");
  for (Map<String, dynamic> candidato in a) {
    print(
        "Código: ${candidato["codigo"]}, Nome: ${candidato["nome"]}, Pontuação: ${candidato["pontuacao"]}");
  }

  // b) O nome do candidato do sexo masculino que teve a menor pontuação geral
  Map<String, dynamic>? b = candidatos
      .where((c) => c["sexo"] == "M")
      .reduce((c1, c2) => c1["pontuacao"] < c2["pontuacao"] ? c1 : c2);
  print(
      "\nNome do candidato do sexo masculino com menor pontuação geral: ${b["nome"]}");

  // c) O código do candidato do sexo masculino que teve a maior pontuação para o curso de Sistemas de Informação
  Map<String, dynamic>? c = candidatos
      .where((c) => c["curso"] == "SI" && c["sexo"] == "M")
      .reduce((c1, c2) => c1["pontuacao"] > c2["pontuacao"] ? c1 : c2);
  print(
      "\nCódigo do candidato do sexo masculino com maior pontuação no curso de Sistemas de Informação: ${c["codigo"]}");

  // d) O percentual geral de candidatos do sexo Masculino e Feminino inscritos no vestibular
  double percMasculino = qtdMasculino / (qtdMasculino + qtdFeminino) * 100;
  double percFeminino = qtdFeminino / (qtdMasculino + qtdFeminino) * 100;
  print("\nPercentual de candidatos inscritos por sexo:");
  print("Masculino: ${percMasculino.toStringAsFixed(2)}%");
  print("Feminino: ${percFeminino.toStringAsFixed(2)}%");
}
