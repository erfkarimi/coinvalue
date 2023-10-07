import 'package:flutter/material.dart';

class PasswordTextFieldWidget extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool obscure;
  static bool obscureStatus = false;
  final IconButton iconButton;


  const PasswordTextFieldWidget(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.textInputType,
      required this.textInputAction,
      required this.obscure,
      required this.iconButton
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textInputType,
        textInputAction: textInputAction,
        obscureText: PasswordTextFieldWidget.obscureStatus,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: iconButton
        ));
  }
}
