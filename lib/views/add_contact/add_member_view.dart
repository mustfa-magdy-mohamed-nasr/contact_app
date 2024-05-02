import 'package:contact_app/views/add_contact/widgets/add_contact_body.dart';
import 'package:flutter/material.dart';

class AddMemberView extends StatelessWidget {
  const AddMemberView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddContactBody(),
    );
  }
}
