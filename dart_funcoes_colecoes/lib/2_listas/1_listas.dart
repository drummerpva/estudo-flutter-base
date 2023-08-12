void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);
  // numeros.forEach(print);
  numeros.forEach(printAcademia);

  var lista = [
    [1, 2],
    [3, 4],
  ];
  print(lista[0][0]);
  var listaNova = lista.expand((element) => element);
  print(listaNova);

  final listaBusca = ['Douglas', 'Elaine', 'Osvaldo'];
  if (listaBusca.any((element) => element == 'Elaine')) {
    print('A Nany ta');
  }

  if (listaBusca.every((element) => element.contains('a'))) {
    print('Todos os itens tem a letra A');
  }

  var listaOrdenacao = [99, 33, 37, 331];
  listaOrdenacao.sort();
  print(listaOrdenacao);

  var listaBuscaOrdenacao = ['Elaine', 'Douglas', 'Osvaldo'];
  listaBuscaOrdenacao.sort();
  print(listaBuscaOrdenacao);

  var listaPacientes = [
    'Douglas|99',
    'Elaine|98',
    'Osvaldo|20',
  ];
  listaPacientes.sort((a, b) {
    var pacienteDados1 = a.split("|");
    var pacienteDados2 = b.split("|");

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
/*     if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    } */
  });

  print(listaPacientes);
}

void printAcademia(int valor) {
  print(valor);
}
