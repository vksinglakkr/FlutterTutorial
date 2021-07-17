import 'package:flutter/material.dart';

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rounded icon button'),
      ),
      body: Center(
          child: ClipOval(
        child: Material(
          color: Colors.blue, // button color
          child: InkWell(
            splashColor: Colors.red, // inkwell color
            child: SizedBox(width: 100, height: 56, child: Icon(Icons.menu)),
            onTap: () {},
          ),
        ),
      )),
    );
  }
}
