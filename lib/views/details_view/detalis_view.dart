import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/details_view/widgets/details_view_body.dart';
import 'package:flutter/material.dart';

class DetalisView extends StatelessWidget {
  const DetalisView({super.key, required this.member});
  final ContactModel member;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: DetailsViewBody(member: member,),
      ),
    );
  }
}
