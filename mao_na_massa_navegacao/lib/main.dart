import 'package:flutter/material.dart';
import 'package:mao_na_massa_navegacao/core/navigator_observer_custom.dart';
import 'package:mao_na_massa_navegacao/pages/detalhe2_page.dart';
import 'package:mao_na_massa_navegacao/pages/detalhe_page.dart';
import 'package:mao_na_massa_navegacao/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => HomePage(),
          );
        }
        if (settings.name == '/detalhe') {
          final parametro = settings.arguments as int?;
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage(
              parametroConstrutor: '${parametro ?? 0}',
            ),
          );
        }
        if (settings.name == '/detalhe2') {
          return MaterialPageRoute<String>(
            settings: settings,
            builder: (context) => const Detalhe2Page(),
          );
        }
      },
      // routes: {'/detalhe2': (_) => const Detalhe2Page()},
    );
  }
}
