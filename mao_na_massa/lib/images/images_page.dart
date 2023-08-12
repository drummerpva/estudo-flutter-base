import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Imagens",
          style: TextStyle(fontFamily: 'Tourney', fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/imagens/conexao.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                'https://docs.flutter.dev/assets/images/flutter-logo-sharing.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Text(
                'Paisagem',
                style: TextStyle(
                    backgroundColor: Colors.white.withOpacity(0.7),
                    fontFamily: 'Tourney',
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/imagens/conexao.png'),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}
