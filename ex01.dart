void main() {
  const boloPrecos = {'ovos': 5.5, 'chocolate': 7.5, 'cenoura': 6.5};
  const ordem = ['ovos', 'chocolate'];
  double total = 0.0;

  for (var bolo in ordem) {
    if (boloPrecos.containsKey(bolo)) {
      total += boloPrecos[bolo]!;
    } else {
      print('$bolo não está no cardápio');
      return;
    }
  }

  print('Total = $total');
}
