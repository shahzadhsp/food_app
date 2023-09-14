import 'package:flutter/material.dart';

class ProfileCustomButton extends StatelessWidget {
  final String text;
  VoidCallback? onPressed;
  ProfileCustomButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(16.0)),
      child: TextButton(
          onPressed: onPressed,
          child: Center(
              child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ))),
    );
  }
}
