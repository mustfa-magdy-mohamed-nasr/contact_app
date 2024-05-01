import 'package:contact_app/views/contact_view/widgets/contact_item.dart';
import 'package:flutter/material.dart';

class ContantListView extends StatelessWidget {
  const ContantListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
      return const ContactItem();
    });
  }
}
