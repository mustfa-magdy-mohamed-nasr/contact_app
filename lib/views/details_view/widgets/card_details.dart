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
    return SizedBox(
      width: double.infinity,
      height: 420,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 420,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    member.name,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomListTileDetails(
                  contanerColora: const Color(0xffEAF2FF),
                  title: 'Phone Namber ',
                  fanction: member.phone,
                  icon: Icons.phone,
                  iconColore: const Color(0xff5699ff),
                ),
                const Divider(
                  endIndent: 15,
                  indent: 15,
                ),
                CustomListTileDetails(
                  contanerColora: const Color(0xffFFEEEF),
                  title: 'Email ',
                  fanction: member.email,
                  icon: Icons.email_outlined,
                  iconColore: const Color(0xffFF5969),
                ),
                const Divider(
                  endIndent: 15,
                  indent: 15,
                ),
                CustomListTileDetails(
                  contanerColora: const Color(0xffE9FAEF),
                  title: 'Fanction ',
                  fanction: member.fanction,
                  icon: Icons.wordpress,
                  iconColore: const Color(0xff29c763),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
