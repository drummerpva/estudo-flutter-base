// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:todo_list_provider/app/core/database/sqlite_connection_factory.dart';
import 'package:todo_list_provider/app/models/task_model.dart';

import './task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final SqliteConnectionFactory _sqliteConnectionFactory;
  TaskRepositoryImpl({
    required SqliteConnectionFactory sqliteConnectionFactory,
  }) : _sqliteConnectionFactory = sqliteConnectionFactory;

  @override
  Future<void> save(DateTime time, String description) async {
    final connection = await _sqliteConnectionFactory.openConnection();
    await connection.insert('todo', {
      'id': null,
      'descricao': description,
      'data_hora': time.toIso8601String(),
      'finalizado': 0
    });
  }

  @override
  Future<List<TaskModel>> findByPeriod(DateTime start, DateTime end) async {
    final startFilter = DateTime(start.year, start.month, start.day, 0, 0, 0);
    final endFilter = DateTime(end.year, end.month, end.day, 23, 59, 59);

    final connection = await _sqliteConnectionFactory.openConnection();
    final result = await connection.rawQuery(
        "SELECT * FROM todo where data_hora between ? and ? order by data_hora",
        [startFilter.toIso8601String(), endFilter.toIso8601String()]);
    return result.map((e) => TaskModel.loadFromDB(e)).toList();
  }

  @override
  Future<void> checkOrUncheckTask(TaskModel task) async {
    final connection = await _sqliteConnectionFactory.openConnection();
    final finished = task.finished ? 1 : 0;
    await connection.rawUpdate(
        'UPDATE todo set finalizado = ? WHERE id = ?', [finished, task.id]);
  }
}
