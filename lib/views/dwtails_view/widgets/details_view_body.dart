import 'package:contact_app/views/dwtails_view/widgets/card_details.dart';
import 'package:contact_app/views/dwtails_view/widgets/custom_details.dart';
import 'package:contact_app/views/dwtails_view/widgets/image_detalis.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ImageDetails(),
        CustomBarDetails(),
        Align(
          alignment: Alignment.bottomCenter,
          child: CardDetails(),
        ),
      ],
    );
  }
}
