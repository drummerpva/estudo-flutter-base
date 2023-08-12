// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomePageStateFull extends StatefulWidget {
  const HomePageStateFull({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageStateFullState();
  }
}

class _HomePageStateFullState extends State<HomePageStateFull> {
  String text = 'Estou no StateFull';

  @override
  void initState() {
    print("initState");
    super.initState();
    text = 'Texto alterado no initState';
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      print("Depois da tela ser montada");
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(text),
        TextButton(
          onPressed: () {
            setState(() {
              text = 'Alterei o texto do StateFull';
            });
          },
          child: const Text("Alterar Texto"),
        ),
      ]),
    );
  }
}
