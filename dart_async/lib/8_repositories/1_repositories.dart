import 'package:dart_async/8_repositories/repositories/cidade_repository.dart';

void main(List<String> args) async {
  var cidadeReposory = CidadeRepository();

  try {
    var cidade = await cidadeReposory.buscarCidade();
    print(cidade);
  } catch (e) {
    print("Erro ao buscar cidade");
  }
}
