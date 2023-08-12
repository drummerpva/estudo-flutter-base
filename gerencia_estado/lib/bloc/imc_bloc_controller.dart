import 'dart:async';
import 'dart:math';

import 'package:gerencia_estado/bloc/imc_state.dart';

class ImcBlocController {
  final _imcStreamController = StreamController<ImcState>.broadcast()
    ..add(ImcStateLoading());
  Stream<ImcState> get imcOut => _imcStreamController.stream;

  Future<void> calculateImc(
      {required double peso, required double altura}) async {
    try {
      _imcStreamController.add(ImcStateLoading());
      await Future.delayed(const Duration(seconds: 1));
      final imc = peso / pow(altura, 2);
      _imcStreamController.add(ImcState(imc: imc));
    } on Exception catch (_) {
      _imcStreamController.add(ImcStateError(message: "Erro ao calcular IMC"));
    }
  }

  void dispose() {
    _imcStreamController.close();
  }
}
