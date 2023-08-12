import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, "/categoria");
                Modular.to.pushNamed(
                  '/categoria',
                  arguments: 'Categoria selecionada 123123',
                );
              },
              child: const Text("Categoria Module"),
            ),
            TextButton(
              onPressed: () {
                Modular.to.pushNamed(
                  '/categoria/produto/Produto_Z',
                );
              },
              child: const Text("Produto submodule de categoria"),
            ),
            TextButton(
              onPressed: () {
                Modular.to.pushNamed('/produto/Produto_X');
              },
              child: const Text("Produto Module"),
            ),
            TextButton(
              onPressed: () {
                Modular.to.pushNamed('/produto/xyz?nome=Produto_Y');
              },
              child: const Text("Produto Query Param Module"),
            )
          ],
        ),
      ),
    );
  }
}
