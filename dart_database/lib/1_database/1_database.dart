import 'package:dart_database/1_database/database.dart';
import 'package:mysql1/mysql1.dart';

void main(List<String> args) async {
  final database = Database();
  var mysqlConnection = await database.openConnection();
  /* var result = await mysqlConnection
      .query("INSERT INTO aluno(nome) values(?)", ["Douglas Poma"]); */
  var result =
      await mysqlConnection.query("SELECT * FROM aluno WHERE id = ?", [1]);
  var aluno = result.isNotEmpty ? result.first : 'Não existe';
  print(aluno);
  for (var row in result) {
    print(row);
    print(row['id']);
    print(row['nome']);
  }

  try {
    var resultErro =
        await mysqlConnection.query("SELECT * FROM alunos WHERE id = ?", [1]);
  } on MySqlException catch (e) {
    print("Erro na SQL $e");
  }

  await mysqlConnection.transaction((transaction) async {
    await transaction.query("SELECT * FROM aluno");
  });

  mysqlConnection.close();
}
