import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bg_app/gallery.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context)=>const Home(),
      '/gallery':(context)=>const GalleryAccess()

    },
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      endDrawer: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/gallery');
        },
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        child: const Image(
            image: AssetImage('assets/homescreen.png')
        ),
      ),
    );
  }
}

