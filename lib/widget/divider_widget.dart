import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget{
  const DividerWidget({super.key});

  @override 
  Widget build(context){
    return const Row(
      children: [
        Expanded(
          child: Divider(
            indent: 40,
            endIndent: 10,
          ),
        ),
        Text(
          "or",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17
          )),
        Expanded(
          child: Divider(
            indent: 10,
            endIndent: 40,
          ),
        )
      ],
    );
  }
}