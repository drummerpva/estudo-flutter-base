import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_example/auth/email_password/login_page.dart';
import 'package:firebase_example/auth/email_password/register_page.dart';
import 'package:firebase_example/auth/show_user.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      routes: {
        "/auth/email_password/register": (_) => RegisterPage(),
        "/auth/email_password/login": (_) => LoginPage(),
        "/auth/show_user": (_) => ShowUser(),
      },
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      print("Usuário logado? ${user != null}");
    });
    super.initState();
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed("/auth/email_password/register");
              },
              child: Text("Register User e-mail password"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/auth/email_password/login");
              },
              child: Text("Login User e-mail password"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/auth/show_user");
              },
              child: Text("Show user"),
            ),
          ],
        ),
      ),
    );
  }
}
