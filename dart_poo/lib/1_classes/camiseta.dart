class Camiseta {
  String? tamanho;
  String? _cor;
  String? marca;

  static const nome = 'Camiseta';
  static String recuperarNome() => nome;

  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Não pode ser ver');
    }
    _cor = cor;
  }

  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na máquina';
    } else {
      return 'Pode lavar na máquina';
    }
  }
}
