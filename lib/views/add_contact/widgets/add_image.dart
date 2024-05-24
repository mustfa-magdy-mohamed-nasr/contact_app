import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatefulWidget {
  const AddImage({
    super.key,
    this.imagePath,
    required this.onImageSelected,
  });

  final String? imagePath;
  final void Function(String imagePath) onImageSelected;

  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  late String? _currentImagePath;

  @override
  void initState() {
    super.initState();
    _currentImagePath = widget.imagePath;
  }

  Future<void> _getImageFromGallery() async {
    final XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _currentImagePath = pickedFile.path;
      });
      widget.onImageSelected(pickedFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _getImageFromGallery();
      },
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.black,
            image: _currentImagePath != null
                ? DecorationImage(
                    image: FileImage(File(_currentImagePath!)),
                    fit: BoxFit.cover,
                  )
                : null,
            borderRadius: BorderRadius.circular(300),
          ),
        ),
      ),
    );
  }
}
