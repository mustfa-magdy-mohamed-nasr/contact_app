import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.short_text_outlined,
          color: Colors.blue,
        ),
        Spacer(
          flex: 1,
        ),
        Text(
          'El Fasafees',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Spacer(
          flex: 1,
        ),
        Icon(
          Icons.search,
          color: Colors.blue,
        )
      ],
    );
  }
}
