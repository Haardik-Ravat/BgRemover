import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  String _urlaaditya = 'https://www.linkedin.com/in/aadityabaranwal/';
  String _urlhaardik = 'https://www.linkedin.com/in/haardik-ravat-989727205/';
  void _launchURLaaditya() async {
    if (!await launch(_urlaaditya)) throw 'Could not launch $_urlaaditya';
  }
  void _launchURLhaardik() async {
    if (!await launch(_urlhaardik)) throw 'Could not launch $_urlhaardik';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline_outlined),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report_gmailerrorred_outlined),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,
            color: Colors.amber,
            ),
            label: 'Feedback',
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image:DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage('assets/support.jpg'))
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Card(
                  color: Colors.grey[700],
                  child: Column(
                    children: [const Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text("Creators",
                      style: TextStyle(
                          fontSize: 30.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        letterSpacing: 2.0
                      ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          const Icon(Icons.link_sharp),
                          TextButton(
                          onPressed:_launchURLaaditya ,
                          child: const Text("Aaditya Baranwal",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),),
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children:[
                            const Icon(Icons.link_rounded),
                            TextButton(
                            onPressed:_launchURLhaardik ,
                            child: const Text("Haardik Ravat",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
