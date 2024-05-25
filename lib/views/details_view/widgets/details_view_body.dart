import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/details_view/widgets/card_details.dart';
import 'package:contact_app/views/details_view/widgets/custom_details.dart';
import 'package:contact_app/views/details_view/widgets/image_detalis.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.member});
  final ContactModel member;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageDetails(
          member: member,
        ),
        CustomBarDetails(
          member: member,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CardDetails(
            member: member,
          ),
        ),
      ],
    );
  }
}
