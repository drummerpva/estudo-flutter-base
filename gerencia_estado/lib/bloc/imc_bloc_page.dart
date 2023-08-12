import 'dart:math';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:gerencia_estado/bloc/imc_bloc_controller.dart';
import 'package:gerencia_estado/bloc/imc_state.dart';
import 'package:gerencia_estado/widgets/imc_gauge.dart';
import 'package:intl/intl.dart';

class ImcBlocPage extends StatefulWidget {
  const ImcBlocPage({Key? key}) : super(key: key);

  @override
  State<ImcBlocPage> createState() => _ImcBlocPageState();
}

class _ImcBlocPageState extends State<ImcBlocPage> {
  final controller = ImcBlocController();
  final pesoEC = TextEditingController();
  final alturaEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  var imc = 0.0;

  @override
  void dispose() {
    controller.dispose();
    pesoEC.dispose();
    alturaEC.dispose();
    super.dispose();
  }

  void _calculateImc({required double peso, required double altura}) async {
    setState(() {
      imc = 0;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      imc = peso / pow(altura, 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMC Bloc'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                StreamBuilder<ImcState>(
                  stream: controller.imcOut,
                  builder: (context, snapshot) {
                    var imc = snapshot.data?.imc ?? 0.0;
                    return ImcGauge(imc: imc);
                  },
                ),
                const SizedBox(height: 20),
                StreamBuilder<ImcState>(
                  stream: controller.imcOut,
                  builder: (context, snapshot) {
                    final dataValue = snapshot.data;
                    if (dataValue is ImcStateLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (dataValue is ImcStateError) {
                      return Text(dataValue.message);
                    }
                    return const SizedBox.shrink();
                  },
                ),
                TextFormField(
                  controller: pesoEC,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Peso'),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                      locale: 'pt_BR',
                      symbol: '',
                      decimalDigits: 2,
                      turnOffGrouping: true,
                    )
                  ],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Peso obrigatório';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: alturaEC,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Altura'),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                      locale: 'pt_BR',
                      symbol: '',
                      decimalDigits: 2,
                      turnOffGrouping: true,
                    )
                  ],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Altura obrigatória';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      var formValid = formKey.currentState?.validate() ?? false;
                      if (!formValid) return;

                      var formatter = NumberFormat.simpleCurrency(
                        locale: 'pt_BR',
                        decimalDigits: 2,
                      );
                      final peso = formatter.parse(pesoEC.text) as double;
                      final altura = formatter.parse(alturaEC.text) as double;
                      controller.calculateImc(peso: peso, altura: altura);
                    },
                    child: const Text('Calcular IMC'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
