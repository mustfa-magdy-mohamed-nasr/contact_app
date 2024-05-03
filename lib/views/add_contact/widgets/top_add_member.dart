import 'package:flutter/material.dart';

class AddImage extends StatelessWidget {
  const AddImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
