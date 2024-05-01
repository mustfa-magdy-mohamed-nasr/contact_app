import 'package:flutter/material.dart';

class CustomListTileDetails extends StatelessWidget {
  const CustomListTileDetails({
    required this.contanerColora,
    required this.title,
    required this.fanction,
    required this.icon,
    required this.iconColore,
    super.key,
  });

  final IconData icon;
  final String title;
  final String fanction;
  final Color contanerColora;
  final Color iconColore;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: contanerColora),
        child: Icon(
          icon,
          color: iconColore,
        ),
      ),
      title: Text(title),
      titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
      subtitle: Text(
        fanction,
        style: const TextStyle(color: Colors.grey, inherit: false),
      ),
    );
  }
}
