void main(List<String> args) {
  final sexo = 'M';
  final idade = 99;

  if (sexo == 'M' && idade >= 18) {
    print("Pode entrar");
  }
  if (idade > 18 || idade == 18) {
    print("Maioridade legal");
  }
  if (!(idade >= 18)) {
    print("de menor");
  }
}
