import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker_Widget extends StatefulWidget {
  const ImagePicker_Widget({super.key});

  @override
  State<ImagePicker_Widget> createState() => _ImagePicker_WidgetState();
}

class _ImagePicker_WidgetState extends State<ImagePicker_Widget> {
  XFile? file;
  List<XFile>? files_list;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image-Picker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey,
              child: Center(
                  child: file == null
                      ? const Text("image is not picked")
                      : Image.file(fit: BoxFit.cover, File(file!.path)))),
          ElevatedButton(
              onPressed: () async {
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });

                print(" Image picked");
                print(file!.path);
              },
              child: const Text("Pick Image")),
          ElevatedButton(
              onPressed: () async {
                final List<XFile> photolist = await _picker.pickMultiImage();
                setState(() {
                  files_list = photolist;
                });

                print(" Image picked");
                for (int i = 0; i < files_list!.length; i++) {
                  print(files_list![i].path);
                }
                // print(file!.path);
              },
              child: const Text("Pick Multiple Images"))
        ],
      ),
    );
  }
}
