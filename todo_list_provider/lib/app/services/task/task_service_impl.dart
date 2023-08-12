import 'package:todo_list_provider/app/models/task_model.dart';
import 'package:todo_list_provider/app/models/week_task_model.dart';
import 'package:todo_list_provider/app/repositories/tasks/task_repository.dart';

import './task_service.dart';

class TaskServiceImpl implements TaskService {
  final TaskRepository _taskRepository;
  TaskServiceImpl({required TaskRepository taskRepository})
      : _taskRepository = taskRepository;
  @override
  Future<void> save(DateTime time, String description) =>
      _taskRepository.save(time, description);

  @override
  Future<List<TaskModel>> getToday() {
    return _taskRepository.findByPeriod(DateTime.now(), DateTime.now());
  }

  @override
  Future<List<TaskModel>> getTomorrow() {
    var tomorrowDate = DateTime.now().add(Duration(days: 1));
    return _taskRepository.findByPeriod(tomorrowDate, tomorrowDate);
  }

  @override
  Future<WeekTaskModel> getWeek() async {
    final today = DateTime.now();
    var startFilter = DateTime(today.year, today.month, today.day, 0, 0, 0);
    DateTime endFilter;
    if (startFilter != DateTime.monday) {
      startFilter =
          startFilter.subtract(Duration(days: startFilter.weekday - 1));
    }
    endFilter =
        startFilter.add(Duration(days: 7, hours: 23, minutes: 59, seconds: 59));
    final tasks = await _taskRepository.findByPeriod(startFilter, endFilter);
    return WeekTaskModel(
        startDate: startFilter, endDate: endFilter, tasks: tasks);
  }

  @override
  Future<void> checkOrUncheckTask(TaskModel task) =>
      _taskRepository.checkOrUncheckTask(task);
}
