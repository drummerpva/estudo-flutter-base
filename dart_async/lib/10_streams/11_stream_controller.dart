// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

void main(List<String> args) async {
  print("Inicio");
  final streamController = StreamController<Pessoa>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream.listen((Pessoa pessoa) {
    print(pessoa.nome);
  });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print("NUmero $numero enviado!");
    inStream.add(Pessoa(nome: 'Douglas Poma #$numero'));
    // streamController.add(numero);
    await Future.delayed(Duration(milliseconds: 300));
  }

  print("FIM");
  await streamController.close();
}

class Pessoa {
  String nome;
  Pessoa({
    required this.nome,
  });
}
