import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main(List<String> args) async {
  // await buscarCep();
  // await buscarPosts();
  // await buscarCepErro();
  await salvarPost();
  await atualizarPost();
}

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var mapaRequest = {
    'title': 'Post novo',
    'body': 'Descricao do post',
    'userId': 1
  };
  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapaRequest));
  print(response.statusCode);
  print(response.body);
}

Future<void> atualizarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';
  var mapaRequest = {
    'id': 1,
    'title': 'Post novo',
    'body': 'Descricao do post',
    'userId': 1
  };
  var response = await http.put(Uri.parse(url),
      body: convert.jsonEncode(mapaRequest),
      headers: {'Content-type': 'application/json; charset=UTF-8'});
  print(response.statusCode);
  print(response.body);
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/89370000/json';
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['localidade']);
    }
  }
}

Future<void> buscarCepErro() async {
  var url = 'https://viacep.com.br/wss/89370000/json';
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['localidade']);
    }
  } else {
    print("Ocorreu um problema!");
    print(response.statusCode);
    print(response.body);
  }
}

Future<void> buscarPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      for (var post in responseData) {
        print(post['id']);
      }
    }
  }
}
