import 'package:flutter/material.dart';

class CustomButtm extends StatelessWidget {
  const CustomButtm(
      {super.key, required this.color, required this.name, this.onTap});
  final void Function()? onTap;
  final Color color;
  final String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 40,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(18)),
        child: Text(
          name,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
