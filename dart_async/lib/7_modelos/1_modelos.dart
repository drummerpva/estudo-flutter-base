import 'dart:convert';

import 'package:dart_async/7_modelos/cidade.dart';
import 'package:dart_async/7_modelos/cidade_mais_facil.dart';
import 'package:dart_async/7_modelos/usuario.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) async {
  var cidade = await buscarCep();
  print(cidade.toString());

  var usuario = await buscaUsuario();
  print(usuario.toString());
}

Future<Usuario> buscaUsuario() async {
  var url = '';
  var mockedResult =
      "{\"id\":\"1\",\"name\":\"DouglasPoma\",\"username\":\"douglaspoma\",\"user_types\":[{\"id\":\"1\",\"userId\":\"1\",\"name\":\"DevSenior\"}]}";
  return Usuario.fromJson(mockedResult);
}

Future<CidadeMaisFacil> buscarCep() async {
  var url = 'https://viacep.com.br/ws/89370000/json';
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    /* var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['localidade']);
    } */
    // return Cidade.fromJson(response.body);
    return CidadeMaisFacil.fromJson(response.body);
  }
  throw Exception("Cep não encontrado");
}
