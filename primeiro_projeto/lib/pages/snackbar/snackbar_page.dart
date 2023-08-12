import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('Usuário salvo com sucesso'),
                    backgroundColor: Colors.blue,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text("Simple Snackbar")),
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text('Excluido com sucesso'),
                    action: SnackBarAction(
                        label: 'Desfazer',
                        onPressed: () {
                          print("Clicou em desfazer!!!");
                        }),
                  );
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text("Action Snackbar")),
          ],
        ),
      ),
    );
  }
}
