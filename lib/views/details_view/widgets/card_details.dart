import 'package:contact_app/model/contact_model.dart';
import 'package:contact_app/views/details_view/widgets/custom_listTile_details.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
    required this.member,
  });

  final ContactModel member;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      key: UniqueKey(),
      tween:
          Tween<double>(end: 420, begin: 100), 
      duration: const Duration(milliseconds: 500),
      builder: (context, value, child) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: value,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.grey[100],
            ),
            child: SingleChildScrollView(
              // Wrap with SingleChildScrollView
              child: _customColumn(),
            ),
          ),
        );
      },
    );
  }

  Widget _customColumn() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            member.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 50),
        CustomListTileDetails(
          contanerColora: const Color(0xffEAF2FF),
          title: 'Phone Number',
          fanction: member.phone,
          icon: Icons.phone,
          iconColore: const Color(0xff5699ff),
        ),
        const Divider(endIndent: 15, indent: 15),
        CustomListTileDetails(
          contanerColora: const Color(0xffFFEEEF),
          title: 'Email',
          fanction: member.email,
          icon: Icons.email_outlined,
          iconColore: const Color(0xffFF5969),
        ),
        const Divider(endIndent: 15, indent: 15),
        CustomListTileDetails(
          contanerColora: const Color(0xffE9FAEF),
          title: 'Function',
          fanction: member.fanction,
          icon: Icons.work,
          iconColore: const Color(0xff29c763),
        ),
      ],
    );
  }
}
