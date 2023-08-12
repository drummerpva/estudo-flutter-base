class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  Pessoa({required this.nome, required this.idade, required this.sexo});
  Pessoa.semNome({required this.idade, required this.sexo});
  Pessoa.vazia();

  factory Pessoa.fabrica(String nomeConstrutor) {
    var nome = '${nomeConstrutor}_Fábrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
}
