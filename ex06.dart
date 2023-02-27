import 'dart:io';
import 'dart:math';

void main() {
  Random random = new Random();
  int numeroAleatorio = random.nextInt(100) + 1;
  int tentativas = 0;

  print("Tente adivinhar o número entre 1 e 100!");

  while (true) {
    tentativas++;
    stdout.write("Tentativa ${tentativas}: ");
    String input = stdin.readLineSync()!;
    int palpite = int.parse(input);

    if (palpite == numeroAleatorio) {
      print("Parabéns, você acertou em ${tentativas} tentativas!");
      break;
    } else if (palpite < numeroAleatorio) {
      print("O número é maior do que ${palpite}. Tente novamente.");
    } else {
      print("O número é menor do que ${palpite}. Tente novamente.");
    }
  }
}
