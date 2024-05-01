import 'package:contact_app/views/dwtails_view/widgets/details_view_body.dart';
import 'package:flutter/material.dart';

class DetalisView extends StatelessWidget {
  const DetalisView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DetailsViewBody(),
      ),
    );
  }
}
