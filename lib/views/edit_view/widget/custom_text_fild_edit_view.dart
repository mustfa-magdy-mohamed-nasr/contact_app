import 'package:flutter/material.dart';

class CustomTextFieldEditView extends StatelessWidget {
  const CustomTextFieldEditView({
    super.key,
    required this.labelText,
    this.onSaved, this.onChanged,
  });

  final String labelText;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: TextFormField(
        onChanged:onChanged ,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'filed is required';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          labelText: labelText,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          // ),
        ),
      ),
    );
  }
}
