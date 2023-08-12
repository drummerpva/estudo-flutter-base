import 'package:flutter/material.dart';

class Detalhe extends StatefulWidget {
  const Detalhe({super.key});

  @override
  State<Detalhe> createState() => _DetalheState();
}

class _DetalheState extends State<Detalhe> {
  int id = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final param =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      setState(() {
        id = param?['id'] ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final param =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
        backgroundColor: Colors.purple[200],
        actions: const [Icon(Icons.add_link_outlined), Icon(Icons.add_a_photo)],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Voltar"),
          ),
          Text('O id do produto é: $id')
        ]),
      ),
    );
  }
}
