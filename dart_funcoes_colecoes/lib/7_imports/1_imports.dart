import 'somas/soma.dart' as soma;
import 'somasnova/soma.dart' as soma_nova;
// import 'package:dart_funcoes_colecoes/7_imports/somas/soma.dart';

void main(List<String> args) {
  print("Soma: ${soma.somaDoubles(10.1, 4.3)}");
  var total = soma_nova.somaInteiros(3, 7);
  print("Total: $total");
}
