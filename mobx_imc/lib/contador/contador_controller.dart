// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mobx/mobx.dart';
import 'package:mobx_imc/models/fullname.dart';

class ContadorController {
  var _counter = Observable<int>(0);
  var _fullName = Observable(FullName(first: "first", last: "last"));
  late Action increment;
  late Computed _saudacaoComputed;

  ContadorController() {
    increment = Action(_incrementCounter);
    _saudacaoComputed = Computed(() => 'Olá ${_fullName.value.first}');
  }

  int get counter => _counter.value;
  FullName get fullName => _fullName.value;
  String get saudacao => _saudacaoComputed.value;

  void _incrementCounter() {
    _counter.value++;
    //não funciona nem com o equality
    // _fullName.value.first = 'Douglas';
    // _fullName.value.last = 'Poma';

    // _fullName.value = FullName(first: "Douglas", last: "Poma");

    //precisa do copyWith na classe
    _fullName.value = _fullName.value.copyWith(first: "Douglas", last: "Poma!");
  }
}
