void main(List<String> args) async {
  print("Inicio Main");
  var mensagem = await processo1();
  print('Mensagem é: $mensagem');
  try {
    var mensagem2 = await processo2();
  } catch (e) {
    print("Erro ao chamar processo 2: $e");
  }
  print("Fim do Main");
}

Future<String> processo1() {
  print("Inicio p3");
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo1');
}

Future<String> processo2() {
  print("Inicio p3");
  return Future.delayed(Duration(seconds: 1), () => throw Exception());
}
