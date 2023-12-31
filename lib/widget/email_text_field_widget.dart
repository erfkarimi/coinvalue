import 'package:flutter/material.dart';

class EmailTextFieldWidget extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String? errorText;
  final Function(String) onChange;


  const EmailTextFieldWidget(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.textInputType,
      required this.textInputAction,
      this.errorText,
      required this.onChange
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
              keyboardType: textInputType,
              textInputAction: textInputAction,
                decoration: InputDecoration(
                      hintText: hintText,
                      prefixIcon: prefixIcon,
                      errorText: errorText,
                    ),
                    onChanged: onChange,
        );
  }
}
