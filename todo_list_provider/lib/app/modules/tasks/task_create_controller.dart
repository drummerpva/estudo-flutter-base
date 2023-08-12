import 'package:todo_list_provider/app/core/notifier/default_change_notifier.dart';
import 'package:todo_list_provider/app/services/task/task_service.dart';

class TaskCreateController extends DefaultChangeNotifier {
  final TaskService _taskService;
  DateTime? _selectedDate;
  TaskCreateController({required TaskService taskService})
      : _taskService = taskService;

  set selectedDate(DateTime? selectedDate) {
    resetState();
    _selectedDate = selectedDate;
    notifyListeners();
  }

  DateTime? get selectedDate => _selectedDate;

  Future<void> save(String text) async {
    try {
      showLoadingAndResetState();
      notifyListeners();
      if (_selectedDate != null) {
        await _taskService.save(_selectedDate!, text);
        success();
      } else {
        setError('Data da task não selecionada');
      }
    } catch (e, s) {
      print(e);
      print(s);
      setError('Erro ao cadastrar atividade');
    } finally {
      hideLoading();
      notifyListeners();
    }
  }
}
