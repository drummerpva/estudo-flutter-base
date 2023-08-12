import 'package:flutter/material.dart';
import 'package:gerencia_estado/bloc/imc_bloc_page.dart';
import 'package:gerencia_estado/changeNotifier/imc_change_notifier_page.dart';
import 'package:gerencia_estado/setState/imc_setstate_page.dart';
import 'package:gerencia_estado/valueNotifier/imc_value_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget page) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (builderContext) => page));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () => _goToPage(context, const ImcSetstatePage()),
            child: const Text('SetState'),
          ),
          ElevatedButton(
            onPressed: () => _goToPage(context, const ImcValueNotifierPage()),
            child: const Text('ValueNotifier'),
          ),
          ElevatedButton(
            onPressed: () => _goToPage(context, const ImcChangeNotifierPage()),
            child: const Text('ChangeNotifier'),
          ),
          ElevatedButton(
            onPressed: () => _goToPage(context, ImcBlocPage()),
            child: const Text('Bloc Patter(Streams)'),
          ),
        ]),
      ),
    );
  }
}
