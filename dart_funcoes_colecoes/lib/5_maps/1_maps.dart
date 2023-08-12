void main(List<String> args) {
  final paciente = <String, String>{
    'nome': 'Douglas Poma',
    'curso': 'Academia do Flutter'
  };

  Map<String, String>? pacienteNullSafety = null;
  Map<String?, String> pacienteNullSafety2 = {null: 'teste'};
  Map<String, String?> pacienteNullSafety3 = {'teste': null};

  var produtos = <String, String>{};
  produtos.putIfAbsent('nome', () => 'Macbook');
  print(produtos);
  produtos.putIfAbsent('nome', () => 'Desktop');
  print(produtos);
  produtos.update('nome', (value) => 'Macbook Pro Ultra M2');
  produtos.update('preco', (value) => '1000', ifAbsent: () => '10');
  print(produtos);

  print('Produto: ${produtos['nome']}');

  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });

  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }
  for (var key in produtos.keys) {
    print('Chave: $key');
  }
  for (var value in produtos.values) {
    print('Value: $value');
  }

  var novoMapProdutos = produtos.map((key, value) {
    return MapEntry('${key}_nova', value);
  });

  print(novoMapProdutos);

  var mapa = <String, Object>{
    'nome': 'Douglas Poma',
    'cursos': [
      {'nome': 'Academia do Flutter', 'descricao': 'Melhor curso flutter'},
      {'nome': 'Arquiteto Flutter', 'descricao': 'Melhor curso flutter'},
    ]
  };
  print(mapa);
}
