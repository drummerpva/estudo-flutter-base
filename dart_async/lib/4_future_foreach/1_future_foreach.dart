void main(List<String> args) async {
  var nomes = ['Douglas', 'Elaine', 'Osvaldo'];
  print("Inicio");
  await Future.forEach<String>(nomes, (nome) async {
    print(await saudacao(nome));
  });
  for (var nome in nomes) {
    print(await saudacao(nome));
  }
  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();
  var saudacoes = await Future.wait(nomesFuturo);
  print(saudacoes);

  print("Fim");
}

Future<String> saudacao(String nome) {
  return Future.delayed(Duration(seconds: 1), () => 'Olá $nome');
}
