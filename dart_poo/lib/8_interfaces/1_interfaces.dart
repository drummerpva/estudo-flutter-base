import 'package:dart_poo/8_interfaces/carro.dart';
import 'package:dart_poo/8_interfaces/gol.dart';
import 'package:dart_poo/8_interfaces/uno.dart';

Carro gol2 = Gol();
void main(List<String> args) {
  Carro gol = Gol();

  print(gol.motor);

  if (gol is Gol) {
    gol.acelerar();
  }
  if (gol2 is Gol) {
    (gol2 as Gol).acelerar();
  }
  (gol as Gol).acelerar();

  Carro uno = Uno();
  print(uno.motor);
}
