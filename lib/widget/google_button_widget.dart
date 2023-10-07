import 'package:flutter/material.dart';

class GoogleButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const GoogleButtonWidget(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(context) {
    return MaterialButton(
        onPressed: onPressed,
        height: 48,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(width: 2.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "asset/image/google_icon.png",
              width: 24,
            ),
            const SizedBox(width: 10),
            Container(
              width: 2.0,
              height: 20,
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
