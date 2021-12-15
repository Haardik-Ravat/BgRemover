import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker picker = ImagePicker();
void main() {
  runApp(const MaterialApp(
    home: GalleryAccess(),
  ));
}


class GalleryAccess extends StatefulWidget {
  const GalleryAccess({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return GalleryAccessState();
  }
}

class GalleryAccessState extends State<GalleryAccess> {
  File galleryFile = File('text');

  @override
  Widget build(BuildContext context) {
    //display image selected from gallery
    imageSelectorGallery() async {
      galleryFile = (await picker.pickImage(
        source: ImageSource.gallery,
        // maxHeight: 50.0,
        // maxWidth: 50.0,
      )) as File;
      setState(() {});
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        backgroundColor: Colors.green,
        actions: const [
          Image(
              image:AssetImage('assets/homebutton.png') )
        ],
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Select Image from Gallery'),
                  onPressed: imageSelectorGallery,
                ),
                SizedBox(
                  height: 200.0,
                  width: 300.0,
                  child: galleryFile == null
                      ? const Center(child: Text('Sorry nothing selected!!'))
                      : Center(child: Image.file(galleryFile!)),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}