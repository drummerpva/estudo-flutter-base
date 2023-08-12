import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    print("Largura: ${mediaQuery.size.width}");
    print("Altura: ${mediaQuery.size.height}");
    print("Orientacao: ${mediaQuery.orientation}");
    print("Status Height: ${mediaQuery.padding.top}");
    print("Tamhno AppBar Default: $kToolbarHeight");

    final statusBarHeight = mediaQuery.padding.top;

    var appBar = AppBar(
      title: const Text('Media Query'),
    );
    print("Tamahno AppBar: ${appBar.preferredSize.height}");
    final appBarHeight = appBar.preferredSize.height;
    return Scaffold(
      appBar: appBar,
      body: Center(
          child: Column(
        children: [
          Container(
            color: Colors.red,
            width: mediaQuery.size.width,
            height:
                (mediaQuery.size.height - statusBarHeight - appBarHeight) / 2,
          ),
        ],
      )),
    );
  }
}
