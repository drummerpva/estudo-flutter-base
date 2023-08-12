import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/change_notifier/change_notifier_page.dart';
import 'package:provider_example/change_notifier/provider_controller.dart';
import 'package:provider_example/provider/provider_page.dart';
import 'package:provider_example/provider/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) {
            return UserModel(
                name: "Douglas Poma",
                imgAvatar:
                    "https://lh3.googleusercontent.com/ogw/AAEL6sgJP51ZYerbQ6POqr3_sbzeYLIdm0xtluUpTxPz0g=s32-c-mo",
                birthDate: "28/03/1991");
          },
        ),
        ChangeNotifierProvider(create: (_) => ProviderController()),
      ],
      child: MaterialApp(
        title: 'Provider Example',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/provider': (_) => ProviderPage(),
          '/change_notifier': (_) => ChangeNotifierPage(),
        },
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/provider');
                      },
                      child: Text('Provider'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/change_notifier');
                      },
                      child: Text('Change Notifier'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
