import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: path(),
  ));
}

class path extends StatefulWidget {
  const path({Key? key}) : super(key: key);

  @override
  _pathState createState() => _pathState();
}

class _pathState extends State<path> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("hey path"),
    );
  }
}
