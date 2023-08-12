import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  // String texto = '';
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  String categoria = 'Categoria1';

  @override
  void dispose() {
    nameEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // TextField(
                //   onChanged: (String value) {
                //     setState(() {
                //       texto = value;
                //     });
                //   },
                // ),
                // const SizedBox(height: 10),
                // Text('Texto digitado: $texto'),
                TextFormField(
                  controller: nameEC,
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.purple),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),
                    isDense: true,
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: nameEC,
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.purple),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),
                    isDense: true,
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                    return null;
                  },
                ),
                DropdownButtonFormField(
                    value: categoria,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Categoria não preenchida';
                      }
                      return null;
                    },
                    elevation: 16,
                    icon: const Icon(Icons.arrow_back_ios),
                    decoration: const InputDecoration(
                      labelText: 'Categoria',
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'Categoria1',
                        child: Text('Categoria 1'),
                      ),
                      DropdownMenuItem(
                        value: 'Categoria2',
                        child: Text('Categoria 2'),
                      ),
                      DropdownMenuItem(
                        value: 'Categoria3',
                        child: Text('Categoria 3'),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        categoria = value ?? '';
                      });
                    }),
                ElevatedButton(
                    onPressed: () {
                      var formValid = formKey.currentState?.validate() ?? false;
                      var message = 'Formulário Inválido!';
                      if (formValid) {
                        message = 'Formulário Válido: ${nameEC.text}';
                      }
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(message)));
                    },
                    child: const Text('Enviar'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
