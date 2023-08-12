void main(List<String> args) {
  var pessoa = Pessoa()
    ..nome = 'Douglas Poma'
    ..email = 'douglaspoma@yahoo.com'
    ..site = 'techmailing.com.br'
    ..printPessoa();
  // pessoa.nome = 'Douglas Poma';
  // pessoa.email = 'douglaspoma@yahoo.com';
  // pessoa.site = 'techmailing.com.br';

  print(pessoa.nome);
  print(pessoa.email);
  print(pessoa.site);

  var mapa = Map<String, String>()
    ..putIfAbsent('nome', () => 'Douglas Poma')
    ..putIfAbsent('email', () => 'douglaspoma@yahoo.com')
    ..putIfAbsent('site', () => 'techmailing.com');

  print(mapa);
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() {
    print("$nome, $email, $site");
  }
}
