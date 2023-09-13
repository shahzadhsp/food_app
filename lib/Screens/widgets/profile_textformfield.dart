import 'package:flutter/material.dart';

class ProfileTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  ProfileTextFormField({required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
          // Add any additional decoration properties here
          // You can customize the border, label, error style, etc.
          ),

      // Add any other TextFormField properties you need, like validators or onChanged callbacks.
    );
  }
}
