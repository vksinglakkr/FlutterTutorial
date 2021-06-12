// lib\Text\Que04IncreaseFontSize.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que04Text11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que04Text11> {
  final String url1 = "";
  final String image1 = "assets/help/Text/Que04.png";
  final String video1 = "";

  double custFontSize = 12;

  void changeFontSize() {
    setState(() {
      custFontSize += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text=>fontSize Property'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: Column(children: <Widget>[
            Text(
              'TextStyle(fontSize: custFontSize)',
              style: TextStyle(fontSize: custFontSize),
            ),
            ElevatedButton(
              onPressed: () {
                changeFontSize();
              },
              child: Text('Change size'),
            ),
          ])),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.purple.shade300,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
