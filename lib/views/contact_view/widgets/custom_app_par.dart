import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  Color _getColorForIndex(int index) {
    List<Color> colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      const Color.fromARGB(255, 150, 137, 20),
      Colors.teal,
      Colors.pink,
      Colors.indigo,
      Colors.cyan,
    ];

    return colors[index % colors.length];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              for (int i = 0; i < 'El Fasafees'.length; i++)
                TextSpan(
                  text: 'El Fasafees'[i],
                  style: TextStyle(
                    color: _getColorForIndex(i),
                    fontWeight: FontWeight.w900,
                    fontSize: 34,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
