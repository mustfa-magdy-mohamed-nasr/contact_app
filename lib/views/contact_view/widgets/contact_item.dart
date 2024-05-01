import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/page2');
      },
      child: ListTile(
        leading: Container(
          width: 60,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        title: const Text("title"),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
        subtitle: const Text(
          "fanction",
          style: TextStyle(color: Colors.grey, inherit: false),
        ),
      ),
    );
  }
}
