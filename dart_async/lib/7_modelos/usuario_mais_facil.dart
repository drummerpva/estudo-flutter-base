// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_async/7_modelos/user_type.dart';

class UsuarioMaisFacil {
  final String id;
  final String name;
  final String userName;
  final List<UserType> userTypes;
  UsuarioMaisFacil({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'userName': userName,
      'userTypes': userTypes.map((x) => x.toMap()).toList(),
    };
  }

  factory UsuarioMaisFacil.fromMap(Map<String, dynamic> map) {
    return UsuarioMaisFacil(
      id: map['id'] as String,
      name: map['name'] as String,
      userName: map['userName'] as String,
      userTypes: List<UserType>.from(
        (map['userTypes'] as List<int>).map<UserType>(
          (x) => UserType.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioMaisFacil.fromJson(String source) =>
      UsuarioMaisFacil.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsuarioMaisFacil(id: $id, name: $name, userName: $userName, userTypes: $userTypes)';
  }
}
