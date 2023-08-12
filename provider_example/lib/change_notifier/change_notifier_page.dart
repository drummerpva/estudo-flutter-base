import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/change_notifier/provider_controller.dart';

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({Key? key}) : super(key: key);

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(Duration(seconds: 2));
      context.read<ProviderController>().alterarDados();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Build Page');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Notifier'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Selector<ProviderController, String>(
                selector: (_, controller) => controller.imgAvatar,
                builder: (_, imgAvatar, __) {
                  print('BUILD: controller.imgAvatar');
                  return CircleAvatar(
                    backgroundImage: NetworkImage(imgAvatar),
                    radius: 60,
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Selector<ProviderController, String>(
                    selector: (_, controller) => controller.name,
                    builder: (_, name, __) {
                      print('BUILD: controller.name');
                      return Text(name);
                    },
                  ),
                  Selector<ProviderController, String>(
                    selector: (_, controller) => controller.birthDate,
                    builder: (_, birthDate, __) {
                      print('BUILD: controller.birthDate');
                      return Text('(${birthDate})');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ProviderController>().alterarNome();
                },
                child: Text('Alterar Nome'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
