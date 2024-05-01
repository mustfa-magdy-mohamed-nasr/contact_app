import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: const BoxDecoration(
        color: Colors.black38,
        image: DecorationImage(
            image: AssetImage("assets/hemaB.jpg"), fit: BoxFit.fill),
      ),
    );
  }
}
