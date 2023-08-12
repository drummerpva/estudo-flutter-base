import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/app/core/auth/auth_provider.dart';
import 'package:todo_list_provider/app/core/ui/messages.dart';
import 'package:todo_list_provider/app/core/ui/theme_extensions.dart';
import 'package:todo_list_provider/app/services/user/user_service.dart';

class HomeDrawer extends StatelessWidget {
  final nameVN = ValueNotifier<String>('');

  HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration:
                BoxDecoration(color: context.primaryColor.withAlpha(70)),
            child: Row(
              children: [
                Selector<AuthProvider, String>(
                  selector: (context, authProvider) {
                    return authProvider.user?.photoURL ??
                        'https://lh3.googleusercontent.com/ogw/AAEL6sgJP51ZYerbQ6POqr3_sbzeYLIdm0xtluUpTxPz0g=s32-c-mo';
                  },
                  builder: (_, value, __) {
                    return CircleAvatar(
                      backgroundImage: NetworkImage(value),
                      radius: 30,
                    );
                  },
                ),
                Selector<AuthProvider, String>(
                  selector: (context, authProvider) {
                    return authProvider.user?.displayName ?? 'Não informado';
                  },
                  builder: (_, value, __) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          value,
                          style: context.textTheme.titleSmall,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Alterar Nome'),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    title: Text('Alterar nome'),
                    content: TextField(
                      onChanged: (value) => nameVN.value = value,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                          'Cancelar',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          final nameValue = nameVN.value;
                          if (nameValue.isEmpty) {
                            Messages.of(context)
                                .showError('Nome não informado');
                          } else {
                            Loader.show(context);
                            await context
                                .read<UserService>()
                                .updateDisplayName(nameValue);
                            Loader.hide();
                            Navigator.of(context).pop();
                          }
                        },
                        child: Text('Alterar'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          ListTile(
            title: Text('Sair'),
            onTap: () => context.read<AuthProvider>().logout(),
          ),
        ],
      ),
    );
  }
}
