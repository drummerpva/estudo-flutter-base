// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_async/7_modelos/user_type.dart';

class Usuario {
  final String id;
  final String name;
  final String userName;
  final List<UserType> userTypes;
  Usuario({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        userName: map['username'] ?? '',
        userTypes: map['user_types']
                ?.map<UserType>((type) => UserType.fromMap(type))
                .toList() ??
            <UserType>[]);
  }

  factory Usuario.fromJson(String source) =>
      Usuario.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': userName,
      'user_types': userTypes.map((e) => e.toMap()).toList()
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return 'Usuario(id: $id, name: $name, userName: $userName, userTypes: $userTypes)';
  }
}
