import 'package:flutter/material.dart';

class Que03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Column(children: [
        Card(
          color: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            'Card with circular border',
            textScaleFactor: 1.2,
          ),
        ),
        Card(
          color: Colors.blue,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            'Card with Beveled border',
            textScaleFactor: 1.2,
          ),
        ),
        Card(
          color: Colors.cyan,
          shape: StadiumBorder(
            side: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: Text(
            'Card with Stadium border',
            textScaleFactor: 1.2,
          ),
        ),
      ]),
    );
  }
}
