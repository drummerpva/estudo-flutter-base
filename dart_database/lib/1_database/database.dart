import 'package:mysql1/mysql1.dart';

class Database {
  Future<MySqlConnection> openConnection() {
    final settings = ConnectionSettings(
        host: '192.168.0.77',
        port: 3306,
        user: 'root',
        password: 'root',
        db: 'dart_mysql');

    return MySqlConnection.connect(settings);
  }
}
