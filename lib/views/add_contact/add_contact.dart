import 'package:contact_app/views/add_contact/widgets/custom_buttom.dart';
import 'package:contact_app/views/add_contact/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  AddContact({super.key});
  TextEditingController title = TextEditingController();
  TextEditingController fanction = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        // image: DecorationImage(
                        //   image: FileImage(image!),
                        //   fit: BoxFit.cover,
                        // ),
                        borderRadius: BorderRadius.circular(300),
                      ),
                    ),
                  ),
                  CustomTextField(
                    fanction: title,
                    icon: Icons.person_3_outlined,
                    labelText: 'Name',
                  ),
                  CustomTextField(
                    fanction: phone,
                    icon: Icons.phone_enabled_outlined,
                    labelText: 'Phone',
                  ),
                  CustomTextField(
                    fanction: fanction,
                    icon: Icons.wordpress_outlined,
                    labelText: 'Function',
                  ),
                  CustomTextField(
                    fanction: email,
                    icon: Icons.email_outlined,
                    labelText: 'Email',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 100,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButtm(
                      color: Colors.red,
                      name: 'Cansel',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    CustomButtm(
                      color: Colors.blue,
                      name: 'Save',
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
