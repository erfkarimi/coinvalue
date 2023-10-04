import 'package:flutter/material.dart';
import '../model/palette.dart';

class BigButton extends StatelessWidget{
  final String title;
  final VoidCallback onPressed;
  const BigButton({
    super.key,
    required this.title,
    required this.onPressed,
    });
    
  @override 
  Widget build(context){
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.infinity,
      height: 50,
      color: Palette.iris,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}