import 'package:flutter/material.dart';

class Que14Forground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => foreground: Paint()'),
      ),
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
        backgroundColor: Colors.black45,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
