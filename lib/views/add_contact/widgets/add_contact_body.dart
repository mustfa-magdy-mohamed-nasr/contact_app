import 'package:contact_app/views/add_contact/widgets/center_add_member.dart';
import 'package:contact_app/views/add_contact/widgets/center_add_member_body.dart';
import 'package:contact_app/views/add_contact/widgets/add_image.dart';
import 'package:flutter/material.dart';

class AddContactBody extends StatelessWidget {
  const AddContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CenterAddMemberBody(),
          ],
        ),
      ],
    );
  }
}
