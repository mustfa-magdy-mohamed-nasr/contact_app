import 'package:contact_app/views/add_contact/widgets/center_add_member.dart';
import 'package:contact_app/views/add_contact/widgets/end_add_member.dart';
import 'package:contact_app/views/add_contact/widgets/top_add_member.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddContactBody extends StatelessWidget {
  const AddContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [TopAddMember(), CenterAddMember(), EndAddMember()],
        ),
      ],
    );
  }
}
