import 'package:flutter/material.dart';

class TextFieldWidget extends TextField{
  final String hintText;
  final Icon prefixIcon;

  TextFieldWidget({
    super.key, required this.hintText, required this.prefixIcon}): 
  super(
    decoration: InputDecoration(
      hintText: hintText,
      prefixIcon: prefixIcon
    )
  );

}