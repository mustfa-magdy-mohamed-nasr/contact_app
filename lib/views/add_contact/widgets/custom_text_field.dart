import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.icon,
    required this.labelText,
    this.onSaved,
    this.isNumeric = false,
  });

  final IconData icon;
  final String labelText;
  final void Function(String?)? onSaved;
  final bool isNumeric;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: TextFormField(
        onSaved: onSaved,
        keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.blue),
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
