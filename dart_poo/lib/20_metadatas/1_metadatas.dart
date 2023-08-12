import 'dart:mirrors';

import 'package:dart_poo/20_metadatas/fazer.dart';
import 'package:dart_poo/20_metadatas/pessoa.dart';

void main(List<String> args) {
  var p1 = Pessoa(nome: "Douglas", fone: "1233");

  var instanceMirror = reflect(p1);
  var classMirror = instanceMirror.type;
  classMirror.metadata.forEach((annotation) {
    var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Fazer) {
      print(instanceAnnotation.oque);
      print(instanceAnnotation.quem);
    }
  });

  classMirror.declarations.values.forEach((element) {
    if (element is VariableMirror) {
      element.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Fazer) {
          print(instanceAnnotation.oque);
          print(instanceAnnotation.quem);
        }
      });
    } else if (element is MethodMirror) {
      element.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Fazer) {
          print(instanceAnnotation.oque);
          print(instanceAnnotation.quem);
        }
      });
    }
  });
}
