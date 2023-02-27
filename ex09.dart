void main() {
  for (int i = 10; i <= 99; i++) {
    int square = i * i;
    int firstHalf = square ~/ 100;
    int secondHalf = square % 100;
    if (firstHalf + secondHalf == i) {
      print(square);
    }
  }
}
