void main() {
  final valorCalculador = somaInteiros(10, 5);
  print('A soma de dois inteiros é $valorCalculador');
}

int somaInteiros(int numero1, int numero2) {
  print("Executando a soma de inteiros($numero1, $numero2)");
  return numero1 + numero2;
}
