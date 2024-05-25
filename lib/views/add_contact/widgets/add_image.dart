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
        await ImagePicker().pickImage(source: ImageSource.gallery);

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
        _showImagePickerOptions();
      },
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: _currentImagePath != null
                      ? FileImage(File(_currentImagePath!))
                      : const AssetImage('assets/avater.webp')
                          as ImageProvider<Object>, // Explicit cast
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(300),
              ),
            ),
            Positioned(
              bottom: -10,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(34)),
                child: IconButton(
                  onPressed: () {
                    _showImagePickerOptions();
                  },
                  icon: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showImagePickerOptions() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('اختر من المعرض'),
                onTap: () {
                  Navigator.pop(context);
                  _getImageFromGallery();
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('التقط صورة من الكاميرا'),
                onTap: () {
                  Navigator.pop(context);
                  _getImageFromCamera();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _getImageFromCamera() async {
    final XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _currentImagePath = pickedFile.path;
      });
      widget.onImageSelected(pickedFile.path);
    }
  }
}
