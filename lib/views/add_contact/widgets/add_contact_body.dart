import 'package:contact_app/views/add_contact/widgets/center_add_member.dart';
import 'package:contact_app/views/add_contact/widgets/center_add_member_body.dart';
import 'package:contact_app/views/add_contact/widgets/add_image.dart';
import 'package:flutter/material.dart';

class AddContactBody extends StatefulWidget {
  const AddContactBody({super.key});

  @override
  _AddContactBodyState createState() => _AddContactBodyState();
}

class _AddContactBodyState extends State<AddContactBody> {
  String? _imagePath;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // AddImage(
            //   onImageSelected: (String imagePath) {
            //     setState(() {
            //       _imagePath = imagePath;
            //     });
            //   },
            // ),
            CenterAddMemberBody(),
          ],
        ),
      ],
    );
  }
}
