import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows Columns'),
      ),
      body: Container(
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              child: const Text('Elemento 1'),
            ),
            const Text('Elemento 2'),
            const Text('Elemento 3'),
            Container(
              height: 200,
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
