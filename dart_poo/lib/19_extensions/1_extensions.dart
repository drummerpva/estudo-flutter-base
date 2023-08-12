import 'package:dart_poo/19_extensions/pessoa.dart';
import 'package:dart_poo/19_extensions/pessoa_saudacao_extension.dart';

import 'saudacao_string_extensions.dart';

void main(List<String> args) {
  String nome = 'Douglas Poma';
  print(nome.saudacao());

  var p1 = Pessoa(nome: "Douglas", fone: "21312312");
  print(p1.saudacao());
}
