import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key, required this.title, required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: title,
        filled: true,
        fillColor: Colors.purple[50],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}