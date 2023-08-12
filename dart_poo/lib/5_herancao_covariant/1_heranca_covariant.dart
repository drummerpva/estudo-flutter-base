import 'package:dart_poo/5_herancao_covariant/banana.dart';
import 'package:dart_poo/5_herancao_covariant/macaco.dart';

void main(List<String> args) {
  var macaco = Macaco();
  macaco.comer(Banana("nanica"));
}
