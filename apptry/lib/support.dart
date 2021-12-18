import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Support(),
  ));
}

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Card(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Card(
          color: Colors.grey[700],
                  child: Column(
                    children: const [Text("Creators",
                    style: TextStyle(
                        fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white
                    ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Aaditya Baranwal",
                          style: TextStyle(
                            fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Haardik Ravat",
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),)
                    ]
                ),
               )
              )

            ],
          ),
        ),
      ),
    );
  }
}
