import 'dart:io';

void main() {
  String matricula;
  String nome;
  String sexo;
  double nota1;
  double nota2;
  double nota3;
  int numFaltas;
  double media;
  double mediaTurma = 0.0;
  int numAlunos = 0;
  int numAprovados = 0;
  double maiorMediaMasc = 0.0;
  double maiorMediaFem = 0.0;
  String matriculaMasc = "";
  String matriculaFem = "";

  do {
    print("Digite a matrícula do aluno ou 00000 para encerrar: ");
    matricula = stdin.readLineSync()!;

    if (matricula != "00000") {
      print("Digite o nome do aluno: ");
      nome = stdin.readLineSync()!;

      print("Digite o sexo do aluno (M ou F): ");
      sexo = stdin.readLineSync()!;

      print("Digite a nota 1 do aluno: ");
      nota1 = double.parse(stdin.readLineSync()!);

      print("Digite a nota 2 do aluno: ");
      nota2 = double.parse(stdin.readLineSync()!);

      print("Digite a nota 3 do aluno: ");
      nota3 = double.parse(stdin.readLineSync()!);

      print("Digite o número de faltas do aluno: ");
      numFaltas = int.parse(stdin.readLineSync()!);

      media = (nota1 + nota2 + nota3) / 3;
      mediaTurma += media;
      numAlunos++;

      if (media >= 7.0 && numFaltas <= 18) {
        numAprovados++;

        if (sexo == "M") {
          if (media > maiorMediaMasc) {
            maiorMediaMasc = media;
            matriculaMasc = matricula;
          }
        } else if (sexo == "F") {
          if (media > maiorMediaFem) {
            maiorMediaFem = media;
            matriculaFem = matricula;
          }
        }
      }
    }
  } while (matricula != "00000");

  print("Média da turma: ${mediaTurma / numAlunos}");
  print("Percentual de alunos aprovados: ${(numAprovados / numAlunos) * 100}%");

  if (maiorMediaMasc > 0) {
    print(
        "Matrícula do aluno masculino com a maior média e que foi aprovado: $matriculaMasc");
  } else {
    print("Não há alunos masculinos aprovados.");
  }

  if (maiorMediaFem > 0) {
    print(
        "Matrícula da aluna feminina com a maior média e que foi aprovada: $matriculaFem");
    print("Média das alunas femininas: ${maiorMediaFem}");
  } else {
    print("Não há alunas femininas aprovadas.");
  }
}
