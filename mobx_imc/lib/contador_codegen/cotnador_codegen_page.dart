import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_imc/contador_codegen/contador_codegen_controller.dart';

class ContadorCodegenPage extends StatefulWidget {
  @override
  State<ContadorCodegenPage> createState() => _ContadorCodegenPageState();
}

class _ContadorCodegenPageState extends State<ContadorCodegenPage> {
  final controller = ContadorCodegenController();
  final reactionsDisposer = <ReactionDisposer>[];

  @override
  void initState() {
    super.initState();
    final autorunDisposer = autorun((_) {
      print("-------------------- auto run ---------------------");
      print(controller.fullName.first);
    });

    final reactionDisposer = reaction((p0) => controller.counter, (counter) {
      print("---------------  reaction -----------------");
      print(counter);
    });

    final whenDisposer =
        when((_) => controller.fullName.first == "Douglas", () {
      print("---------------  when -----------------");
      print(controller.fullName.first);
    });

    reactionsDisposer.add(autorunDisposer);
    reactionsDisposer.add(reactionDisposer);
    reactionsDisposer.add(whenDisposer);
  }

  @override
  void dispose() {
    super.dispose();
    reactionsDisposer.forEach((disposer) => disposer());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador MOBX Codegen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) {
                return Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Observer(
              builder: (_) {
                return Text(controller.fullName.first);
              },
            ),
            Observer(
              builder: (_) {
                return Text(controller.fullName.last);
              },
            ),
            Observer(
              builder: (_) {
                return Text(controller.saudacao);
              },
            ),
            TextButton(
              onPressed: () => controller.changeName(),
              child: const Text("Alterar Nome"),
            ),
            TextButton(
              onPressed: () => controller.rollbackName(),
              child: const Text("Rollback Nome"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
