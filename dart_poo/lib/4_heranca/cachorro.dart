import 'package:dart_poo/4_heranca/animal.dart';

class Cachorro extends Animal {
  Cachorro(int idade) : super(idade: idade);
  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
