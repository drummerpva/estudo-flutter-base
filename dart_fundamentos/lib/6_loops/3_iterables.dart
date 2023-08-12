void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);
  numeros.where((numero) => numero != 5).forEach((element) {
    print(element);
  });

  final numerosAte5 = numeros
      .takeWhile((value) => value < 6)
      .where((element) => element != 4)
      .toList();
  print(numerosAte5);

  final numerosRemoverAte5 = numeros.skipWhile((value) => value < 6).toList();
  print(numerosRemoverAte5);

  var numeroStrList = numeros.map((e) => "numero é: $e").toList();
  print(numeroStrList);

  var numerosRevertidos = numeros.reversed.toList();
  print(numerosRevertidos);
}
