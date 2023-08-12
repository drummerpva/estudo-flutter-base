void main(List<String> args) {
  final numeros = [1, 2, 3, 4];
  print(numeros);
  numeros.add(1);
  print(numeros);

  final nomes = ["Douglas", "Elaine", "Osvaldo"];
  print(nomes);
  print(nomes[1]);

  nomes.insert(0, "Douglas Poma");
  print(nomes);

  nomes.addAll(["Elaine Regina", "Osvaldo Peludo"]);
  print(nomes);

  nomes.remove('Osvaldo Peludo');
  print(nomes);

  nomes.removeWhere((nome) {
    if (nome == 'Douglas') return true;
    return false;
  });
  print(nomes);

  print(nomes[nomes.length - 1]);
  print(nomes.last);

  print(nomes[0]);
  print(nomes.first);

  print(nomes.firstWhere((nome) => nome == 'Elaine'));

  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  final stringsGerados = List.generate(10, (index) => 'Indice ${index + 1}');
  print(stringsGerados);

  final repeticoes = List.filled(10, "Douglas");
  print(repeticoes);

  final numerosGeradosCalculo = List.generate(100, (index) => index + 1);
  var soma = numerosGeradosCalculo.fold<int>(
      0, (previousValue, element) => previousValue += element);
  print(soma);

  var listaNumerosSpread = [1, 2, 3];
  var listaNumerosSpreadB = [...listaNumerosSpread, 4, 5, 6];
  print(listaNumerosSpreadB);

  var promocaoAtiva = true;
  var produtos = ['Agua', 'Arroz', if (promocaoAtiva) 'Carro'];
  print(produtos);

  var listaInts = [1, 2, 3];
  var listaStrings = ["#0", for (var i in listaInts) '#$i'];
  print(listaStrings);

  var string = nomes.join(" - ");
  print(string);
}
