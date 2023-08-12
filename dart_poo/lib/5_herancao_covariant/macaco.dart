import 'package:dart_poo/5_herancao_covariant/banana.dart';
import 'package:dart_poo/5_herancao_covariant/fruta.dart';
import 'package:dart_poo/5_herancao_covariant/mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana fruta) {
    print("Comendo banana ${fruta.tipo}");
  }
}
