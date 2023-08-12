import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/detalhe',
                arguments: 37,
              );
            },
            child: const Text('Detalhe'),
          ),
          TextButton(
            onPressed: () async {
              print("Antes de navegar para a página detalhe 2");
              final retorno = await Navigator.of(context).pushNamed(
                '/detalhe2',
              );
              print("Navegou para a página detalhe 2");
              print("Retorno de Detalhe 2 é: $retorno");
            },
            child: const Text('Ir para detalhe2 e aguardar'),
          )
        ],
      )),
    );
  }
}
