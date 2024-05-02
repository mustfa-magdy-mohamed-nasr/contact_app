import 'package:contact_app/views/add_contact/widgets/custom_text_field.dart';
import 'package:contact_app/views/add_contact/widgets/end_add_member.dart';
import 'package:flutter/material.dart';

class CenterAddMember extends StatefulWidget {
  const CenterAddMember({
    super.key,
  });

  @override
  State<CenterAddMember> createState() => _CenterAddMemberState();
}

class _CenterAddMemberState extends State<CenterAddMember> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? name, email, fanction, phone;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              name = value;
            },
            icon: Icons.person_3_outlined,
            labelText: 'Name',
          ),
          CustomTextField(
            onSaved: (value) {
              phone = value;
            },
            icon: Icons.phone_enabled_outlined,
            labelText: 'Phone',
          ),
          CustomTextField(
            onSaved: (value) {
              fanction = value;
            },
            icon: Icons.wordpress_outlined,
            labelText: 'Function',
          ),
          CustomTextField(
            onSaved: (value) {
              email = value;
            },
            icon: Icons.email_outlined,
            labelText: 'Email',
          ),
          EndAddMember(
            onTapSave: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          )
        ],
      ),
    );
  }
}
