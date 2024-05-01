import 'package:flutter/material.dart';

class CustomButtm extends StatelessWidget {
  CustomButtm({
    super.key, required this.color, required this.name,required this.onTap
  });
 final VoidCallback onTap; 
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
        child:  Text(
          name,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}