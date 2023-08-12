import 'package:dart_poo/16_ordenacao_default/cliente.dart';

void main(List<String> args) {
  var c1 = Cliente(nome: "Douglas", telefone: "123123");
  var c2 = Cliente(nome: "Elaine", telefone: "123123");
  var c3 = Cliente(nome: "Osvaldo", telefone: "123123");
  var c4 = Cliente(nome: "Marisa", telefone: "123123");

  var lista = [c1, c2, c3, c4];
  print(lista);
  lista.sort();
  // lista.sort((a, b) => a.nome.compareTo(b.nome));
  print(lista);
}
