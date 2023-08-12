import 'package:dart_poo/18_modificadores/pessoa.dart';

void main(List<String> args) {
  var p1 = const Pessoa(nome: "Douglas", idade: 99);
  var p2 = const Pessoa(nome: "Douglas", idade: 99);
  var p3 = const Pessoa(nome: "Douglas", idade: 99);

  print(p1 == p2);
  print(p1 == p2 && p2 == p3);
}
