void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Douglas', 'Elaine', 'Osvaldo'];

  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  for (var numero in numeros) {
    print("for in: $numero");
  }
  for (var nome in nomes) {
    print("for in: $nome");
  }

  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Elaine') break;
  }

  for (var i = 0; i < numeros.length; i++) {
    if (i == 6 || i == 9) continue;
    print(numeros[i]);
  }
}
