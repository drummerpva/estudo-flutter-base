import 'package:dart_poo/7_polimorfismo/medico.dart';
import 'package:dart_poo/7_polimorfismo/obstreta.dart';
import 'package:dart_poo/7_polimorfismo/pediatra.dart';
import 'package:dart_poo/7_polimorfismo/residente_anestesia.dart';

void main(List<String> args) {
  var medicos = <Medico>[Pediatra(), Obstreta(), ResidenteAnestesia()];

  for (var medico in medicos) {
    medico.operar();
  }
}
