import 'package:apptry/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:apptry/gallery.dart';
import 'package:apptry/support.dart';
import 'package:apptry/path.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context)=>const Home(),
      '/gallery':(context)=>const GalleryAccess(),
      '/Support':(context)=>const Support(),
      '/Path':(context)=>path(),

    },
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
Function? func;
final items = ['Support', 'path'];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        backgroundColor: Colors.purple[500],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(20, 30),
          )
        ),
        leading:const Icon(Icons.settings,
        color: Colors.black,) ,
        actions:const [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
            child: CustomButtonTest(),
          )
        ],
        title: const Center(
          child: Text(
            ' Welcome to \nWonderspace'
          ),
        ),
        actionsIconTheme: const IconThemeData(
          color: Colors.black,
          opacity: 0.7,
          size: 0.2,
        ),
      ),
      endDrawer: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/gallery');
        },
        shape: const CircleBorder(
        ),
        child: const Image(
            image: AssetImage('assets/homescreen.png')
          ),
      ),
    );
  }
}
