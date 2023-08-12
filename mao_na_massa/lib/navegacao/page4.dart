import 'package:flutter/material.dart';
import 'package:mao_na_massa/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
        backgroundColor: Colors.purple[200],
        actions: const [Icon(Icons.add_link_outlined), Icon(Icons.add_a_photo)],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pushAndRemoveUntil(
              //     MaterialPageRoute(
              //       builder: (context) => Page1(),
              //       settings: RouteSettings(name: "page1"),
              //     ),
              //     ModalRoute.withName('page2'));
              //Removend todas as páginas
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => Page1(),
                  settings: RouteSettings(name: "page1"),
                ),
                (route) => route.isFirst,
                // (route) => false,
              );
            },
            child: Text("Page1 Via PAGE"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/page1',
                (route) => route.isFirst,
              );
            },
            child: Text("Page1 Via Named"),
          ),
        ]),
      ),
    );
  }
}
