import 'package:dart_poo/2_construtores/pessoa.dart';

void main(List<String> args) {
  // var pessoa = Pessoa("Douglas Poma", 99, "Masculino");
  var pessoa = Pessoa(
    nome: "Douglas Poma",
    idade: 99,
    sexo: "Masculino",
  );
  print(pessoa);

  var pessoaSemNome = Pessoa.semNome(idade: 99, sexo: "Masculino");
  print(pessoaSemNome);

  var pessoaFabrica = Pessoa.fabrica("Douglas");
  print(pessoaFabrica);
}
