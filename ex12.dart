import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  String input = stdin.readLineSync()!;
  String reversedInput = input.split('').reversed.join();
  print("Número de trás para frente: $reversedInput");
}
