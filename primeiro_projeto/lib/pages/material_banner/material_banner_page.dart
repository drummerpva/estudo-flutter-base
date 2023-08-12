import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final materialBanner = MaterialBanner(
                    content: Text('Usuário salvo com sucesso'),
                    backgroundColor: Colors.amber,
                    actions: [
                      TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          },
                          child: Text('Cancelar'))
                    ],
                  );
                  ScaffoldMessenger.of(context)
                      .showMaterialBanner(materialBanner);

                  Future.delayed(
                    Duration(seconds: 3),
                    () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                  );
                },
                child: Text("Simple Material Banner")),
          ],
        ),
      ),
    );
  }
}
