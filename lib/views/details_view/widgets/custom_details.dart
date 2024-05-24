import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/edit_view/edit_view.dart';
import 'package:flutter/material.dart';

class CustomBarDetails extends StatelessWidget {
  const CustomBarDetails({
    super.key,
    required this.member,
  });
  final ContactModel member;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: const Color(0xff979EAB),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                // color: Colors.white,
              )),
        ),
        Card(
          color: const Color(0xff979EAB),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(36),
          // ),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditView(member: member)));
              },
              icon: const Icon(
                Icons.edit_note_sharp,
                // color: Colors.white,
              )),
        ),
      ],
    );
  }
}
