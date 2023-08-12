import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  Future<void> registerUser() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailEC.text, password: passwordEC.text);

      final user = credential.user;
      var message = '';

      if (user == null) {
        message = "Usuário ou senha inválidos";
      }
      if (user != null && !user.emailVerified) {
        message =
            "Email não verificado, clique no link enviado para seu e-mail para ativar sua conta";
        await user.sendEmailVerification();
      }
      if (message.isNotEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(message)));
      }
      if (user == null) {
        return;
      }
      print(user.displayName);
      await user.updateDisplayName("Douglas Poma");
      print(credential.user?.email);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login de usuário'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: emailEC,
                decoration: InputDecoration(label: Text("E-mail")),
              ),
              TextField(
                controller: passwordEC,
                decoration: InputDecoration(label: Text("Senha")),
              ),
              ElevatedButton(
                  onPressed: registerUser, child: Text("Login Usuário"))
            ],
          ),
        ),
      ),
    );
  }
}
