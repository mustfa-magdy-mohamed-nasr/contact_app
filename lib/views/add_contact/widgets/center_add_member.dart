import 'package:contact_app/views/add_contact/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CenterAddMember extends StatelessWidget {
  const CenterAddMember({
    super.key,
    required this.title,
    required this.phone,
    required this.fanction,
    required this.email,
  });

  final TextEditingController title;
  final TextEditingController phone;
  final TextEditingController fanction;
  final TextEditingController email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          fanction: title,
          icon: Icons.person_3_outlined,
          labelText: 'Name',
        ),
        CustomTextField(
          fanction: phone,
          icon: Icons.phone_enabled_outlined,
          labelText: 'Phone',
        ),
        CustomTextField(
          fanction: fanction,
          icon: Icons.wordpress_outlined,
          labelText: 'Function',
        ),
        CustomTextField(
          fanction: email,
          icon: Icons.email_outlined,
          labelText: 'Email',
        ),
      ],
    );
  }
}

