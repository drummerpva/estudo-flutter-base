void main(List<String> args) {
  final nomes = ['Douglas', 'Elaine', 'Osvaldo'];
  final pessoasAntigo = nomes.map((e) => Pessoa(e)).toList();
  // final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();
  final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();

  for (var pessoa in pessoas) {
    print("Ola ${pessoa.nome}");
  }

  funcaoQualquer(Pessoa.new);
}

void funcaoQualquer(void Function(String) funcao) {
  funcao('Douglas');
}

class Pessoa {
  String nome;
  Pessoa(this.nome);
  Pessoa.nome(this.nome);
}
