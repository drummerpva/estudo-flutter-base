import 'package:flutter/material.dart';

class HomePageStateless extends StatelessWidget {
  String text = 'Estou no Stateless';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text(text),
        TextButton(
          onPressed: () {
            text = 'Alterei o texto do Stateless';
          },
          child: Text("Alterar Text"),
        ),
      ]),
    );
  }
}
