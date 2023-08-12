import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return DialogCustom(context);
                    },
                  );
                },
                child: Text('Dialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: Text('Simple Dialog'),
                          contentPadding: EdgeInsets.all(10),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Titulo X'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text('Fechar'),
                            )
                          ],
                        );
                      });
                },
                child: Text('SimpleDialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) {
                        if (Platform.isIOS)
                          return CupertinoAlertDialog(
                            title: Text('Alert Dialog'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Deseja realmente salvar?'),
                                  )
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {}, child: Text('Cancelar')),
                              TextButton(
                                  onPressed: () {}, child: Text('Confirmar')),
                            ],
                          );
                        return AlertDialog(
                          title: Text('Alert Dialog'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text('Deseja realmente salvar?'),
                                )
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {}, child: Text('Cancelar')),
                            TextButton(
                                onPressed: () {}, child: Text('Confirmar')),
                          ],
                        );
                      });
                },
                child: Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () async {
                  if (Platform.isIOS) {
                    return showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return CupertinoTimerPicker(
                              onTimerDurationChanged: (_) {});
                        });
                  }
                  final hourSelected = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  print('Hora selecionada: $hourSelected');
                },
                child: const Text('Time Picker')),
            ElevatedButton(
              onPressed: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );
                print('Data selecionada: $date');
              },
              child: Text('Date Picker'),
            ),
            ElevatedButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'Primeiro projeto',
                  applicationIcon: Icon(Icons.flutter_dash),
                );
              },
              child: Text('About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
