void main(List<String> args) {
  final idade = 99;
  if (idade == 18) {
    print("Pode tirar habilitação");
  }
  if (idade != 0) {
    print('Não é recem nascido');
  }
  if (idade < 0) {
    print('Idade inválida');
  }
  if (idade >= 18) {
    print('Maioridade legal');
  }
}
