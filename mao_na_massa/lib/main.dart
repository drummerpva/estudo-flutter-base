import 'package:flutter/material.dart';
import 'package:mao_na_massa/navegacao/home_page.dart';
import 'package:mao_na_massa/navegacao/page1.dart';
import 'package:mao_na_massa/navegacao/page2.dart';
import 'package:mao_na_massa/navegacao/page3.dart';
import 'package:mao_na_massa/navegacao/page4.dart';
import 'package:mao_na_massa/navegacao_params/detalhe.dart';
import 'package:mao_na_massa/navegacao_params/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mão na Massa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      initialRoute: '/navegacao_param',
      routes: {
        '/home_page': (_) => const HomePage(),
        Page2.routeName: (_) => const Page1(),
        '/page2': (_) => const Page2(),
        '/page3': (_) => const Page3(),
        '/page4': (_) => const Page4(),
        '/navegacao_param': (_) => const Lista(),
        '/detalhe': (_) => const Detalhe(),
      },
    );
  }
}
