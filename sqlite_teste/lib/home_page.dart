import 'package:flutter/material.dart';
import 'package:sqlite_teste/database/database.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    initialConnection();
    super.initState();
  }

  Future<void> initialConnection() async {
    var database = await DatabaseSqlLite().openConnection();
    // await database.insert('teste', {'nome': 'Douglas Poma'});
    // await database
    //     .delete('teste', where: 'nome = ?', whereArgs: ['Douglas Poma'],);
    /* await database.update(
      'teste',
      {'nome': 'Douglas S Poma'},
      where: 'nome = ?',
      whereArgs: ['Douglas Poma'],
    ); */

    // var result = await database.query('teste');
    // print(result);
    /* await database.rawInsert(
      'INSERT INTO teste(nome) VALUES(?)',
      ['Doug Poma'],
    ); */
    /* await database.rawUpdate(
      'update teste set nome = ? where id = ?',
      ['Douglas Poma', 4],
    ); */
    var result = await database.rawQuery(
      'SELECT * FROM teste where nome LIKE ?',
      ['Douglas%'],
    );
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(),
    );
  }
}
