import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/produto_model.dart';
import 'package:provider_example/provider/produto_widget.dart';
import 'package:provider_example/provider/user_model.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context);
    // var user = context.read<UserModel>();
    // var imageAvatar =
    //     context.select<UserModel, String>((userModel) => userModel.imgAvatar);
    // var user = context.watch<UserModel>();
    return Provider(
      create: (_) => ProdutoModel(nome: "Produto Teste"),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(user.imgAvatar),
                  radius: 60,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(user.name),
                    Text('(${user.birthDate})'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ProdutoWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
