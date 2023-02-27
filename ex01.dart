/*
Dado o seguinte mapa de preços de bolos:

const boloPrecos = {'ovos' : 5,5, 'chocolate' : 7,5, 'cenoura' : 6,5, };

Escreva um programa em Dart para calcular o total para um determinado pedido.
Por exemplo, dada a seguinte ordem:

const ordem =['ovos', 'chocolate'];

O programa deve imprimir -> Total = 13.0

OBS.: Se um bolo não estiver no cardápio, o programa deve imprimir algo assim ->
limão não está no cardápio

*/

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
