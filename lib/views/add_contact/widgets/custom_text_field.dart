import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.icon,
    required this.labelText, this.onSaved,
  });

  final IconData icon;
  final String labelText;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: TextFormField(
          onSaved: onSaved,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'filed is required';
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
              prefixIcon: Icon(icon, color: Colors.blue),
              labelText: labelText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ))),
    );
  }
}
