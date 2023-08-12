import 'package:dart_poo/15_equals_hashcodes/pessoa.dart';

void main(List<String> args) {
  var nome = 'Douglas';
  var nome2 = 'Douglas';

  if (nome == nome2) {
    print("É igual");
  } else {
    print("Não é igual");
  }

  var p1 = Pessoa("Douglas", "email");
  var p2 = Pessoa("Douglas", "email");
  print(p1.hashCode);
  print(p2.hashCode);
  //p2 = p1 //é igual(referencia na memoria)
  if (p1 == p2) {
    print("É igual");
  } else {
    print("Não é igual");
  }

  print(p1.toString());
}
