import 'package:flutter/material.dart';
import 'package:mao_na_massa/navegacao/page2.dart';
import 'package:mao_na_massa/navegacao_params/detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
        backgroundColor: Colors.purple[200],
        actions: const [Icon(Icons.add_link_outlined), Icon(Icons.add_a_photo)],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Detalhe(),
                  settings: const RouteSettings(
                    name: "detalhe",
                    arguments: {
                      'id': 73,
                    },
                  ),
                ),
              );
            },
            child: const Text("Detalhes"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/detalhe',
                arguments: {
                  'id': 37,
                },
              );
            },
            child: const Text("Detalhes Named"),
          ),
        ]),
      ),
    );
  }
}
