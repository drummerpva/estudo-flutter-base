import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({Key? key}) : super(key: key);
  // final cor = Colors.blue;
  // final cor = Colors.red.withOpacity(0.4);
  // final cor = Color.fromRGBO(0, 0, 255, 0.7);
  final cor = Color(0xFF45D1FD);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: cor,
        ),
      ),
    );
  }
}
