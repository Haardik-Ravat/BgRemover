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
      '/Path':(context)=>const path(),

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
  String dropdownValue =  '';
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
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.settings,
            color: Colors.black,
            size: 30.0,
          )
        ),
        actions:[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                child: DropdownButton<String>(
                  dropdownColor: Colors.blueAccent,
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                      Navigator.pushNamed(context, '/'+dropdownValue);
                    });
                  },
                  items: <String>['','Path', 'Support']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                              value,
                          style: TextStyle(
                            color: Colors.blueGrey[800],
                            fontStyle: FontStyle.italic,
                          ),),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
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
