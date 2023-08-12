import 'package:dart_poo/20_metadatas/fazer.dart';

@Fazer(quem: "Douglas Poma class", oque: "lert anotacao da classe")
class Pessoa {
  @Fazer(quem: "Douglas Poma atributo", oque: "lert anotacao do atributo")
  String nome;
  String fone;
  Pessoa({
    required this.nome,
    required this.fone,
  });
  @Fazer(quem: "Douglas Poma metodo", oque: "lert anotacao do metodo")
  void fazerAlgo() {}
}
