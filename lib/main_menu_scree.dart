import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_manager/image_picker_service.dart';
import 'package:image_picker/image_picker.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  XFile? _imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: _imageFile != null
            ? Image(
                image: FileImage(
                  File(_imageFile!.path),
                ),
              )
            : const Text('Nessuna immagine'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onClick,
        child: const Icon(Icons.camera),
      ),
    );
  }

  void _onClick() async {
    _imageFile = await ImagePickerService().pickCropImage(
      cropAspectRatio: const CropAspectRatio(ratioX: 16, ratioY: 9),
      imageSource: ImageSource.gallery,
    );

    setState(() {});
  }
}
