import 'package:dart_poo/1_classes/camiseta.dart';

void main(List<String> args) {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'preta';
  camisetaNike.marca = 'nike';

  print('''
  Camiseta:
    Tamanho: ${camisetaNike.tamanho},
    Cor: ${camisetaNike.cor},
    Marca: ${camisetaNike.marca},
''');
  print(camisetaNike.tipoDeLavagem());

  print(Camiseta.nome);
  print(Camiseta.recuperarNome());
}
