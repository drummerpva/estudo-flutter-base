import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder,
  botoesRotacaoTexto,
  singleChildScrollView,
  listView,
  dialogs,
  snackbars,
  forms,
  cidades,
  stack,
  stack2,
  bottomNavigatorBar,
  circleAvatar,
  colors,
  materialBanner,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            icon: const Icon(Icons.menu_book),
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rowsColumns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.mediaQuery:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layoutBuilder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                case PopupMenuPages.botoesRotacaoTexto:
                  Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                  break;
                case PopupMenuPages.singleChildScrollView:
                  Navigator.of(context).pushNamed('/single_child_scroll');
                  break;
                case PopupMenuPages.listView:
                  Navigator.of(context).pushNamed('/list_view');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopupMenuPages.snackbars:
                  Navigator.of(context).pushNamed('/snackbars');
                  break;
                case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed('/forms');
                  break;
                case PopupMenuPages.cidades:
                  Navigator.of(context).pushNamed('/cidades');
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed('/stack');
                  break;
                case PopupMenuPages.stack2:
                  Navigator.of(context).pushNamed('/stack2');
                  break;
                case PopupMenuPages.bottomNavigatorBar:
                  Navigator.of(context).pushNamed('/bottom_navigator_bar');
                  break;
                case PopupMenuPages.circleAvatar:
                  Navigator.of(context).pushNamed('/circle_avatar');
                  break;
                case PopupMenuPages.colors:
                  Navigator.of(context).pushNamed('/colors');
                  break;
                case PopupMenuPages.materialBanner:
                  Navigator.of(context).pushNamed('/material_banner');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rowsColumns,
                  child: Text('Rows/Columns'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.mediaQuery,
                  child: Text('Media Query'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layoutBuilder,
                  child: Text('Layout Buidler'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoesRotacaoTexto,
                  child: Text('Botões/Rotação texto'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.singleChildScrollView,
                  child: Text('Single Child Sroll'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.listView,
                  child: Text('List View'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbars,
                  child: Text('Snackbars'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text('Forms'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cidades,
                  child: Text('Cidades'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text('Stack'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack2,
                  child: Text('Stack2'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottomNavigatorBar,
                  child: Text('Bottom Navigator Bar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circleAvatar,
                  child: Text('Circle Avatar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.colors,
                  child: Text('Colors'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.materialBanner,
                  child: Text('Material Banner'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Theme(
        // data: ThemeData(primaryColor: Colors.red),
        data: Theme.of(context).copyWith(
          primaryColor: Colors.blueGrey,
        ),
        child: Center(
            child: Column(
          children: [
            ElevatedButton(
              child: const Text('Botão X'),
              onPressed: () {},
            ),
            Container(
              width: 300,
              height: 200,
              color: Theme.of(context).primaryColor,
            ),
            Builder(builder: (builderContext) {
              return Container(
                width: 300,
                height: 200,
                color: Theme.of(builderContext).primaryColor,
              );
            }),
            const ContainerX()
          ],
        )),
      ),
    );
  }
}

class ContainerX extends StatelessWidget {
  const ContainerX({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      color: Theme.of(context).primaryColor,
    );
  }
}
