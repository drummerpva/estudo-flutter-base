void main(List<String> args) {
  //parametros obrigatórios por default
  //parametros nomeados
  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1: 10.2, numero2: 10.2)}');

  print(
      'A soma de 10.2 + 10.2 é ${somaDoublesObrigatorios(numero1: 10.2, numero2: 10.2)}');

  print('A soma de 10.2 + null é ${somaDoublesDefault(numero1: 10.2)}');

  print('A soma de 1 + null é ${domaIntOpcional(1)}');
  print('A soma de null + 2 é ${domaIntOpcional(0, 1)}');

  parametrosNormaisComNomeados(10, nome: 'Douglas Poma', idade: 99);
  parametrosNormaisComNomeados2(10, 'Douglas Poma', 99);
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

double somaDoubles({double? numero1, double? numero2}) {
  // numero1 ??= 0;
  // numero2 ??= 0;
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0;
}

double somaDoublesObrigatorios(
    {required double? numero1, required double numero2}) {
  numero1 ??= 0;
  return numero1 + numero2;
}

double somaDoublesDefault({double numero1 = 0, double numero2 = 0}) {
  return numero1 + numero2;
}

int domaIntOpcional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}

void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]) {}
