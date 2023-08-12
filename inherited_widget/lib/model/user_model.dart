import 'package:flutter/material.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imgAvatar;
  final String birthday;
  UserModel(
      {required this.name,
      required this.imgAvatar,
      required this.birthday,
      required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name ||
        imgAvatar != oldWidget.imgAvatar ||
        birthday != oldWidget.birthday;
  }

  static UserModel of(BuildContext context) {
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(userModel != null, 'UserModel not exissts in BuildContext');
    return userModel!;
  }
}
