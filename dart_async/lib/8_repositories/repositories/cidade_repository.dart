import 'package:dart_async/8_repositories/models/cidade.dart';

import 'package:http/http.dart' as http;

class CidadeRepository {
  Future<Cidade> buscarCidade() async {
    var url = 'https://viacep.com.br/ws/89370000/json';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return Cidade.fromJson(response.body);
    }
    throw Exception("Cep não encontrado");
  }
}
