import 'dart:io';

import 'package:flutter/material.dart';
import 'package:contact_app/model/contact_model.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({
    super.key,
    required this.member,
  });
  final ContactModel member;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      key: UniqueKey(),
      tween: Tween<double>(end: 420, begin: 700),
      duration: const Duration(milliseconds: 400),
      builder: (context, value, child) {
        return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: value,
            child: _contaner());
      },
    );
  }

  Widget _contaner() {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(16),
        image: member.imagePath != null && File(member.imagePath!).existsSync()
            ? DecorationImage(
                image: FileImage(File(member.imagePath!)),
                fit: BoxFit.cover,
              )
            : null,
        color: member.imagePath == null || !File(member.imagePath!).existsSync()
            ? Colors.grey
            : null, // لون بديل إذا لم يكن هناك صورة
      ),
    );
  }
}
