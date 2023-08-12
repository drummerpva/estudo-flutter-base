import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;

  CategoriaPage({Key? key, this.categoria})
      :
        // : categoria = Modular.args.data,
        super(key: key);

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
// class _CategoriaPageState extends ModularState<CategoriaPage, CategoriaController> {
  var controller = Modular.get<CategoriaController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(widget.categoria ?? 'Categoria não recebida'),
            TextButton(
                onPressed: () {
                  // var controller = Modular.get<CategoriaController>();
                  print("Categoria Controller get: ${controller.hashCode}");
                },
                child: const Text('Get Controller'))
          ],
        ),
      ),
    );
  }
}
