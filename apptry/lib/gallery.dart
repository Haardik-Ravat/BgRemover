import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:apptry/path.dart';

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
  File? _image ;
  final picker = ImagePicker();
  String Path = '/';

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Path = pickedFile.path;
        //Navigator.push(
          //context,
          //MaterialPageRoute(builder: (context)=>path(Path :Path)));
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    //display image selected from gallery


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
                  onPressed: ()=>getImage(),
                ),
                Flexible(
                    child: _image != null ? Image.file(_image!) : Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 25, 0, 16),
                      child: Container(
                          child: Text(' Please select an Image '),
                          decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15)
                          )
                        ),
                    ),
                    )
              ],
            ),
          );
        },
      ),
    );
  }
}