import 'dart:async';

void main(List<String> args) async {
  print("Inicio");
  final streamController = StreamController<int>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream
      .skip(1)
      .where((int numero) => numero % 2 == 0)
      .map((int value) => 'O valor par enviado é $value')
      .listen((strConvertida) {
    print(strConvertida);
  });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    inStream.add(numero);
    // streamController.add(numero);
    await Future.delayed(Duration(milliseconds: 300));
  }

  print("FIM");
  await streamController.close();
}
