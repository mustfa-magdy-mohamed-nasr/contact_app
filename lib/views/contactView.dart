import 'package:contact_app/views/widgets/contant_list_view.dart';
import 'package:contact_app/views/widgets/contant_view_body.dart';
import 'package:contact_app/views/widgets/custom_app_par.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: CustomAppBar(),
      body: ContantViewBody(),
    );
  }
}
