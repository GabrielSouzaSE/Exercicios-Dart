import 'dart:io';

void main() {
  String codigo, nome, sexo;
  int horas;
  double salario_bruto, salario_liquido, media_homem = 0, media_mulher = 0;
  int cont_homem = 0, cont_mulher = 0;

  do {
    stdout.write("Digite o código do professor (ou 9999 para sair): ");
    codigo = stdin.readLineSync()!;

    if (codigo != "9999") {
      stdout.write("Digite o nome do professor: ");
      nome = stdin.readLineSync()!;

      stdout.write("Digite o sexo do professor (M/F): ");
      sexo = stdin.readLineSync()!;

      stdout.write("Digite o número de horas de aula dadas no mês: ");
      horas = int.parse(stdin.readLineSync()!);

      salario_bruto = horas * 12.3;

      if (sexo == "M") {
        salario_liquido = salario_bruto * 0.9;
        cont_homem++;
        media_homem += salario_liquido;
      } else if (sexo == "F") {
        salario_liquido = salario_bruto * 0.95;
        cont_mulher++;
        media_mulher += salario_liquido;
      } else {
        print("Sexo inválido.");
        continue;
      }

      print("Código: $codigo");
      print("Nome: $nome");
      print("Salário bruto: R\$ ${salario_bruto.toStringAsFixed(2)}");
      print("Salário líquido: R\$ ${salario_liquido.toStringAsFixed(2)}");
      print("");
    }
  } while (codigo != "9999");

  if (cont_homem > 0) {
    media_homem /= cont_homem;
    print("Média salarial dos homens: R\$ ${media_homem.toStringAsFixed(2)}");
  }

  if (cont_mulher > 0) {
    media_mulher /= cont_mulher;
    print(
        "Média salarial das mulheres: R\$ ${media_mulher.toStringAsFixed(2)}");
  }
}
