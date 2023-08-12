import 'package:flutter/material.dart';
import 'package:inherited_widget/home/home_page.dart';
import 'package:inherited_widget/model/user_model.dart';
import 'package:inherited_widget/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Douglas S Poma',
      birthday: '28-03-1991',
      imgAvatar:
          'https://lh3.googleusercontent.com/ogw/AAEL6sgJP51ZYerbQ6POqr3_sbzeYLIdm0xtluUpTxPz0g=s32-c-mo',
      child: MaterialApp(
        title: 'Inherited Widget',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (_) => const SplashPage(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
