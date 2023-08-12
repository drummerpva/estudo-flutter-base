void main(List<String> args) {
  print("Inicio do P1");
  processo2();
  processo3().then((value) {
    print(value);
  });
  processo3().then((value) {
    try {
      throw Exception();
    } catch (e) {
      print("Erro dentro o p3");
    }
  }).catchError((erro) => print("Erro ao executar o p3"));

  processo4()
      .then((value) => print("mensagem p4 $value"))
      .catchError((erro) => print("Erro ao executar o p4"))
      .whenComplete(
        () => print("Finalizou 4 com erro whenComplete"),
      );
  ;
  processo4().then((value) => print("mensagem p4 $value"), onError: (error) {
    print("Tratando erro pelo OnError do p4");
  });

  processo3()
      .then(
        (value) => print(value),
      )
      .whenComplete(
        () => print("Finalizou 3 com suceeso whenComplete"),
      );

  print("Fim do P1");
}

Future<void> processo2() async {
  print("Inicio do p2");
  Future.delayed(Duration(seconds: 2), () {
    for (var i = 0; i <= 5; i++) {
      print(i);
    }
    print("Fim do p2");
  });
}

Future<String> processo3() {
  print("Inicio p3");
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo3');
}

Future<String> processo4() {
  print("Inicio p4");
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}
