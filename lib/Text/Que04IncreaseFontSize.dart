import 'package:flutter/material.dart';

class Que04 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que04> {
  double custFontSize = 12;

  void changeFontSize() async {
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
      body: Center(
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
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
