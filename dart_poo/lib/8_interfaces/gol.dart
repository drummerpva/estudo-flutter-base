// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_poo/8_interfaces/carro.dart';

class Gol implements Carro {
  @override
  String motor = "2.0";
  @override
  int portas = 4;
  @override
  int rodas = 4;

  @override
  void velocidadeMaxima() {
    // TODO: implement velocidadeMaxima
  }

  void acelerar() {}
}
