import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_texto.dart';
import 'package:primeiro_projeto/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:primeiro_projeto/pages/cidades/cidades_page.dart';
import 'package:primeiro_projeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:primeiro_projeto/pages/colors/colors_page.dart';
import 'package:primeiro_projeto/pages/container/container_page.dart';
import 'package:primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:primeiro_projeto/pages/forms/form_page.dart';
import 'package:primeiro_projeto/pages/home/home_page.dart';
import 'package:primeiro_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:primeiro_projeto/pages/material_banner/material_banner_page.dart';
import 'package:primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:primeiro_projeto/pages/rows_columns/rows_column_page.dart';
import 'package:primeiro_projeto/pages/scrolls/listview_page.dart';
import 'package:primeiro_projeto/pages/scrolls/singlechildscrollview_page.dart';
import 'package:primeiro_projeto/pages/snackbar/snackbar_page.dart';
import 'package:primeiro_projeto/pages/stack/stack_page.dart';
import 'package:primeiro_projeto/pages/stack/stack_page2.dart';

void main() {
  runApp(DevicePreview(
    enabled: false, //!kReleaseMode,
    builder: (_) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
        primaryColorLight: Colors.red,
        primaryColorDark: Colors.amberAccent,
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        ),
      ),
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowsColumnPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => const BotoesRotacaoTexto(),
        '/single_child_scroll': (_) => const SinglechildscrollviewPage(),
        '/list_view': (_) => const ListViewPage(),
        '/dialogs': (_) => const DialogsPage(),
        '/snackbars': (_) => const SnackbarPage(),
        '/forms': (_) => const FormPage(),
        '/cidades': (_) => const CidadesPage(),
        '/stack': (_) => const StackPage(),
        '/stack2': (_) => const StackPage2(),
        '/bottom_navigator_bar': (_) => const BottomNavigatorBarPage(),
        '/circle_avatar': (_) => const CircleAvatarPage(),
        '/colors': (_) => ColorsPage(),
        '/material_banner': (_) => const MaterialBannerPage(),
      },
    );
  }
}
