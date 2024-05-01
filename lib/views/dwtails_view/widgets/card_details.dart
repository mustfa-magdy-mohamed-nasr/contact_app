import 'package:contact_app/views/dwtails_view/widgets/custom_listTile_details.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 420,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Ebrahhime Elgitany',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              CustomListTileDetails(
                contanerColora: Color(0xffEAF2FF),
                title: 'Phone Namber ',
                fanction: '01093301415',
                icon: Icons.phone,
                iconColore: Color(0xff5699ff),
              ),
              Divider(
                endIndent: 15,
                indent: 15,
              ),
              CustomListTileDetails(
                contanerColora: Color(0xffFFEEEF),
                title: 'Email ',
                fanction: 'ebrahhimeElgitany@gmail.com',
                icon: Icons.email_outlined,
                iconColore: Color(0xffFF5969),
              ),
              Divider(
                endIndent: 15,
                indent: 15,
              ),
              CustomListTileDetails(
                contanerColora: Color(0xffE9FAEF),
                title: 'Fanction ',
                fanction: 'Member',
                icon: Icons.wordpress,
                iconColore: Color(0xff29c763),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
