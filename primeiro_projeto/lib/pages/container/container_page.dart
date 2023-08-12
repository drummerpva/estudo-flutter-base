import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de Container'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.lightGreen[200],
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                color: Colors.black,
                blurRadius: 20,
                offset: Offset(10, 10),
              ),
              const BoxShadow(
                color: Colors.lightGreen,
                blurRadius: 20,
                offset: Offset(-10, -10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
