void main(List<String> args) {
  var lista = ['Douglas'];
  print(lista);
  funcao(lista);
  print(lista);

  var nome = 'Douglas Poma';
  print(nome);
  funcao2(nome);
  print(nome);

  var list = ['Douglas'];
  print(list);
  add(list);
  print(list);
}

void funcao(List<String> nomes) {
  nomes.add('Elaine');
}

void funcao2(String nome) {
  nome += 'Teste';
}

List<String> add(List<String> lista) {
  var nova = [...lista];
  nova.add('Elaine');
  return nova;
}
