import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.fanction,
    required this.icon,
    required this.labelText,
  });

  final TextEditingController fanction;
  final IconData icon;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: TextField(
          controller: fanction,
          decoration: InputDecoration(
              prefixIcon: Icon(icon, color: Colors.blue),
              labelText: labelText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ))),
    );
  }
}
