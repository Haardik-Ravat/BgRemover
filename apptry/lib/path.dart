import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: path(),
  ));
}

class path extends StatefulWidget {
  String? Path = '/';
  path({Key? key,this.Path}) : super(key: key);

  @override
  _pathState createState() => _pathState();
}

class _pathState extends State<path> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(

        image: DecorationImage(
        image: AssetImage('assets/path.jpg')
        )
      ),
      child: Column(
        children:const [ Card(
          child: Center(
              child: Text(
              "hey path",
              style: TextStyle(
                fontSize: 40.0
              ),)),
        ),
      ]),
    );
  }
}
