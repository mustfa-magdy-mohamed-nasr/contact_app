import 'package:contact_app/views/add_contact/widgets/center_add_member.dart';
import 'package:contact_app/views/add_contact/widgets/end_add_member.dart';
import 'package:contact_app/views/add_contact/widgets/top_add_member.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddContactBody extends StatelessWidget {
  AddContactBody({super.key});
  TextEditingController title = TextEditingController();
  TextEditingController fanction = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TopAddMember(),
            CenterAddMember(
                title: title, phone: phone, fanction: fanction, email: email),
            const EndAddMember()
          ],
        ),
      ],
    );
  }
}

