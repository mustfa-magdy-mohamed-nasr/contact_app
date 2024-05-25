import 'package:contact_app/views/add_contact/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class EndAddMember extends StatelessWidget {
  const EndAddMember({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButtm(
            color: Colors.red,
            name: 'لا ياعم',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          CustomButtm(
            color: Colors.blue,
            name: 'أضافه فُسْفُوس',
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
