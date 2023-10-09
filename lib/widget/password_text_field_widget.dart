import 'package:flutter/material.dart';

class PasswordTextFieldWidget extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool obscure;
  static bool passObscureStatus = true;
  final IconButton iconButton;
  final String? errorText;
  final Function(String) onChanged;


  const PasswordTextFieldWidget(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.textInputType,
      required this.textInputAction,
      required this.obscure,
      required this.iconButton,
      this.errorText,
      required this.onChanged
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
            keyboardType: textInputType,
            textInputAction: textInputAction,
            obscureText: PasswordTextFieldWidget.passObscureStatus,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: iconButton,
              errorText: errorText
          ),
            onChanged: onChanged,
      );
  }
}
