import 'dart:io';

void main() {
  int totalCandidatos = 0;
  int mulheres = 0;
  int homens = 0;
  int homensComExperiencia = 0;
  double idadeHomensComExperiencia = 0;
  int homensAcima45 = 0;
  int mulheresAbaixo30ComExperiencia = 0;
  String nomeCandidataMaisNovaComExperiencia = "";
  int idadeCandidataMaisNovaComExperiencia = 999;

  stdout.write('Digite o nome do candidato: ');
  String nome = stdin.readLineSync()!;

  while (nome.toUpperCase() != 'FIM') {
    stdout.write('Digite o sexo do candidato (M/F): ');
    String sexo = stdin.readLineSync()!;
    stdout.write('Digite a idade do candidato: ');
    int idade = int.parse(stdin.readLineSync()!);
    stdout.write('O candidato tem experiência no serviço? (S/N): ');
    String experiencia = stdin.readLineSync()!;

    totalCandidatos++;

    if (sexo.toUpperCase() == 'F') {
      mulheres++;
    } else {
      homens++;
      if (experiencia.toUpperCase() == 'S') {
        homensComExperiencia++;
        idadeHomensComExperiencia += idade;

        if (idade > 45) {
          homensAcima45++;
        }
      }
    }

    if (sexo.toUpperCase() == 'F' &&
        idade < 30 &&
        experiencia.toUpperCase() == 'S') {
      mulheresAbaixo30ComExperiencia++;
    }

    if (experiencia.toUpperCase() == 'S' &&
        idade < idadeCandidataMaisNovaComExperiencia) {
      nomeCandidataMaisNovaComExperiencia = nome;
      idadeCandidataMaisNovaComExperiencia = idade;
    }

    stdout.write('\nDigite o nome do candidato: ');
    nome = stdin.readLineSync()!;
  }

  print('\n--- RESULTADO DO LEVANTAMENTO ---');
  print('Número total de candidatos: $totalCandidatos');
  print('Número de candidatas mulheres: $mulheres');
  print('Número de candidatos homens: $homens');

  if (homensComExperiencia > 0) {
    double mediaIdadeHomensComExperiencia =
        idadeHomensComExperiencia / homensComExperiencia;
    print(
        'Idade média dos homens com experiência no serviço: ${mediaIdadeHomensComExperiencia.toStringAsFixed(2)} anos');
  } else {
    print('Não há homens com experiência no serviço.');
  }

  if (homens > 0) {
    double porcentagemHomensAcima45 = (homensAcima45 / homens) * 100;
    print(
        'Porcentagem de homens com mais de 45 anos: ${porcentagemHomensAcima45.toStringAsFixed(2)}%');
  } else {
    print('Não há homens cadastrados.');
  }

  print(
      'Número de mulheres com menos de 30 anos e experiência no serviço: $mulheresAbaixo30ComExperiencia');

  if (idadeCandidataMaisNovaComExperiencia != 999) {
    print(
        'Nome da candidata mais nova com experiência no serviço: $nomeCandidataMaisNovaComExperiencia');
  } else {
    print('Não há candidatas com experiência no serviço.');
  }
}
