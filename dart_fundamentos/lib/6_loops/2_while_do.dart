void main(List<String> args) {
  var numero = 0;
  while (numero < 10) {
    print(numero);
    numero++;
  }
  numero = 0;
  do {
    print('do: $numero');
    numero++;
  } while (numero < 10);
}
