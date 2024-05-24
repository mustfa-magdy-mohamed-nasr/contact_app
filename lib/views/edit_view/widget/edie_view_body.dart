import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/add_contact/widgets/add_image.dart';
import 'package:contact_app/views/edit_view/widget/center_edit_member.dart';
import 'package:flutter/material.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key, required this.member});
  final ContactModel member;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding:
          const EdgeInsets.all(16.0), // Optional: Add padding for better UI
      children: [
        Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Aligns children to the start
          children: [
            AddImage(
              onImageSelected: (String imagePath) {
                member.imagePath = imagePath;
              },
            ),
            CenterEditMemberBody(
              member: member,
            ),
          ],
        ),
      ],
    );
  }
}
