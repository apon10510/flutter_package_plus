import 'dart:io'; // File variauble import 
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // this main package

class ImagePickerFlutter extends StatefulWidget {
  const ImagePickerFlutter({super.key});

  @override
  State<ImagePickerFlutter> createState() => _ImagePickerFlutterState();
}

class _ImagePickerFlutterState extends State<ImagePickerFlutter> {
  File? pathImage; // variauble the image path
  pickImage() async {
    final picker = ImagePicker(); // import the pakage
    final file = await picker.pickImage(
        source: ImageSource.gallery); // pick image in gallery change the camera
    if (file != null) {
      // if not null
      setState(
        () {
          pathImage = File(file.path); // imagePath == the pick image
        },
      );
    } else {
      // You 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: 500,
                width: 200,
                child: pathImage == null // if image null when show The Text
                    ? const Center(child: Text('Hi'))
                    : Image.file(pathImage!)), // or not null show this pick image 
            ElevatedButton(
              onPressed: () {
                pickImage();
              },
              child: const Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}
