import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSqlLite {
  Future<Database> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databaseFinalPath = join(databasePath, "SQLITE_EXAMPLE");

    return await openDatabase(
      databaseFinalPath,
      version: 2,
      onConfigure: (db) async {
        print("onConfigure chamado");
        await db.execute('PRAGMA foreign_keys = ON');
      },
      onCreate: (Database db, int version) {
        var batch = db.batch();
        batch.execute('''
          create table teste(
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        ''');
        batch.execute('''
          create table produto(
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        ''');
        /* batch.execute('''
          create table categoria(
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        '''); */
        batch.commit();
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) {
        print("onUpgrade chamado");
        var batch = db.batch();
        if (newVersion == 2) {
          batch.execute('''
          create table produto(
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        ''');
          batch.execute('''
          create table categoria(
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        ''');
        }
        /* if (newVersion == 3) {
          batch.execute('''
          create table categoria(
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        ''');
        } */
        batch.commit();
      },
      onDowngrade: (Database db, int oldVersion, int newVersion) {
        print("onDowngrade chamado");
        var batch = db.batch();
        if (newVersion == 2) {
          batch.execute('''
          drop table categoria
        ''');
        }
        batch.commit();
      },
    );
  }
}
