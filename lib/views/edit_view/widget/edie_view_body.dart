import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/add_contact/widgets/top_add_member.dart';
import 'package:contact_app/views/edit_view/widget/center_edit_member.dart';
import 'package:flutter/material.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key, required this.member});
  final ContactModel member;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const AddImage(),
            CenterEditMemberBody(
              member: member,
            )
          ],
        ),
      ],
    );
  }
}
