void main(List<String> args) {
  var pessoa = Pessoa();
  pessoa.nome = 'Douglas Poma';
}

class Pessoa {
  String? _nome;
  String? get nome => _nome;
  set nome(String? nome) => _nome = nome;
}
