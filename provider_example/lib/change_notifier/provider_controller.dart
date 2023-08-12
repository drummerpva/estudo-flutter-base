// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = 'Nome';
  String imgAvatar =
      'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png';
  String birthDate = 'Data';

  void alterarDados() {
    name = 'Douglas Poma';
    imgAvatar =
        'https://lh3.googleusercontent.com/ogw/AAEL6sgJP51ZYerbQ6POqr3_sbzeYLIdm0xtluUpTxPz0g=s32-c-mo';
    birthDate = '28/03/1991';
    notifyListeners();
  }

  void alterarNome() {
    name = 'Douglas S Poma Dev';
    notifyListeners();
  }
}
