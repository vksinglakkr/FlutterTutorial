import 'package:flutter/material.dart';

class Que05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme'),
      ),
      body: Card(
        color: Colors.grey[700],
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.red, width: 5),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'example',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
