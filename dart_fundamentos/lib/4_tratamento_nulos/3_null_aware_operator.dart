String? nome;
void main(List<String> args) {
  const sobrenome = 'Poma';
  var nomeCompleto = (nome ?? 'Douglas ') + sobrenome;
  print(nomeCompleto);
}
