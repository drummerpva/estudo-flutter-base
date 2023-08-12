import 'package:flutter/material.dart';
import 'package:mao_na_massa/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  static final String routeName = '/page2';
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        backgroundColor: Colors.purple[200],
        actions: const [Icon(Icons.add_link_outlined), Icon(Icons.add_a_photo)],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Page3(),
                    settings: RouteSettings(name: "page3")),
              );
            },
            child: Text("Page3 Via PAGE"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("pop"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/page3');
            },
            child: Text("Page3 Via Named"),
          ),
        ]),
      ),
    );
  }
}
