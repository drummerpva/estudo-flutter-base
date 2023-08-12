import 'package:dart_poo/4_heranca/cachorro.dart';

void main(List<String> args) {
  var cachorro = Cachorro(10);
  print(cachorro.recuperarIdade());
  print(cachorro.calcularIdadeHumana());
}
