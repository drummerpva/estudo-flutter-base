// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
  final String parametroConstrutor;
  const DetalhePage({
    Key? key,
    required this.parametroConstrutor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? parametro = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                "Parametro recebido: $parametro, via contstrutor: $parametroConstrutor"),
          ],
        ),
      ),
    );
  }
}
