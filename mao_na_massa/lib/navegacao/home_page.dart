import 'package:flutter/material.dart';
import 'package:mao_na_massa/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.purple[200],
        actions: const [Icon(Icons.add_link_outlined), Icon(Icons.add_a_photo)],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Page2(),
                    settings: RouteSettings(name: "page2")),
              );
            },
            child: Text("Page2 Via PAGE"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/page2');
            },
            child: Text("Page2 Via Named"),
          ),
        ]),
      ),
    );
  }
}
