// lib\Text\Que14forground.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que14Forground extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Text/Que14.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => foreground: Paint()'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: Container(
            child: Stack(
          children: <Widget>[
            // Stroked text as border.
            Text(
              'Greetings, planet!',
              style: TextStyle(
                fontSize: 40,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 6
                  ..color = Colors.blue[700],
              ),
            ),
            // Solid text as fill.
            Text(
              'Greetings, planet!',
              style: TextStyle(
                fontSize: 40,
                color: Colors.grey[300],
              ),
            ),
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
