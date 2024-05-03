import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/edit_view/widget/edie_view_body.dart';
import 'package:flutter/material.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.member});
  final ContactModel member;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      body: EditViewBody(member:member ,),
    ));
  }
}
