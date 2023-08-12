import 'package:flutter/material.dart';

class BotoesRotacaoTexto extends StatelessWidget {
  const BotoesRotacaoTexto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.red,
                    child: const Text('Douglas Poma'),
                  ),
                ),
                const Icon(Icons.ac_unit)
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(50),
                minimumSize: const Size(50, 10),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              child: const Text('Salvar'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.save_alt_outlined),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shadowColor: Colors.blue,
                minimumSize: const Size(120, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              child: const Text('Salvar'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.save_as),
              label: const Text('Salvar'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.blue),
                minimumSize: MaterialStateProperty.all(
                  const Size(120, 50),
                ),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.hovered)) {
                      return Colors.amber;
                    }
                    return Colors.blue;
                  },
                ),
              ),
              child: const Text('Salvar?'),
            ),
            InkWell(
              onTap: () {},
              child: const Text('InkWell'),
            ),
            GestureDetector(
              child: const Text('Gesture'),
              onTap: () {},
              onVerticalDragStart: (_) {},
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.purple,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: Colors.purple,
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(20),
                child: const Center(
                  child: Text(
                    'Salvar',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
