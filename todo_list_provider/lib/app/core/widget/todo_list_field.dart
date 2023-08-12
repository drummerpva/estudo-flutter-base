// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/core/ui/todo_list_icons.dart';

class TodoListField extends StatelessWidget {
  final String label;
  final IconButton? suffixIconButton;
  final bool obscureText;
  final ValueNotifier<bool> obscureTextVN;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final FocusNode? focusNode;

  TodoListField(
      {Key? key,
      required this.label,
      this.suffixIconButton,
      this.obscureText = false,
      this.controller,
      this.validator,
      this.focusNode})
      : assert(obscureText == true ? suffixIconButton == null : true,
            'obscureText não pode ser enviado em conjunto com SuffixIconButton'),
        obscureTextVN = ValueNotifier(obscureText),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: obscureTextVN,
      builder: (_, obscureTextVNValue, child) {
        return TextFormField(
          controller: controller,
          focusNode: focusNode,
          validator: validator,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.red),
            ),
            isDense: true,
            suffixIcon: suffixIconButton ??
                (obscureText == true
                    ? IconButton(
                        icon: Icon(
                          !obscureTextVNValue
                              ? TodoListIcons.eye_slash
                              : TodoListIcons.eye,
                          size: 15,
                        ),
                        onPressed: () {
                          obscureTextVN.value = !obscureTextVN.value;
                        },
                      )
                    : null),
          ),
          obscureText: obscureTextVNValue,
        );
      },
    );
  }
}
