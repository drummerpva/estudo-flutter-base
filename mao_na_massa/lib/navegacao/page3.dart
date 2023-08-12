import 'package:flutter/material.dart';
import 'package:mao_na_massa/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
        backgroundColor: Colors.purple[200],
        actions: const [Icon(Icons.add_link_outlined), Icon(Icons.add_a_photo)],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.of(context).pushReplacement(
          //       MaterialPageRoute(
          //           builder: (context) => Page4(),
          //           settings: RouteSettings(name: "page4")),
          //     );
          //   },
          //   child: Text("Page4 Via PAGE replace"),
          // ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Page4(),
                    settings: RouteSettings(name: "page4")),
              );
            },
            child: Text("Page4 Via PAGE"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("pop"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/page4');
            },
            child: Text("Page4 Via Named"),
          ),
        ]),
      ),
    );
  }
}
