import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/bottom_navigator_bar/page1.dart';
import 'package:primeiro_projeto/pages/bottom_navigator_bar/page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigator Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            indexPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Página 1',
            icon: Icon(Icons.add_a_photo_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Página 2',
            icon: Icon(Icons.delete_forever_rounded),
          ),
        ],
      ),
      body: IndexedStack(
        index: indexPage,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
