import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: Center(child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                width: constraints.maxWidth * .75,
                height: constraints.maxHeight / 2,
              ),
              Container(
                color: Colors.blue,
                width: constraints.maxWidth,
                height: constraints.maxHeight / 2,
              ),
            ],
          );
        },
      )),
    );
  }
}
