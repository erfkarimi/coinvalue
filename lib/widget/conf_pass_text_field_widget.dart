import 'package:flutter/material.dart';

class ConfPassTextFieldWidget extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool obscure;
  static bool confPassObscureStatus = true;
  final IconButton iconButton;
  final String? errorText;
  final Function(String) onChanged;
  static bool enabled = false;
  final TextEditingController controller;


  const ConfPassTextFieldWidget(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.textInputType,
      required this.textInputAction,
      required this.obscure,
      required this.iconButton,
      this.errorText,
      required this.onChanged,
      required this.controller
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textInputType,
        textInputAction: textInputAction,
        controller: controller,
        obscureText: ConfPassTextFieldWidget.confPassObscureStatus,
        decoration: InputDecoration(
          hintText: hintText,
          enabled: ConfPassTextFieldWidget.enabled,
          prefixIcon: prefixIcon,
          suffixIcon: iconButton,
          errorText: errorText 
          ),
          onChanged: onChanged,
      );
  }
}
