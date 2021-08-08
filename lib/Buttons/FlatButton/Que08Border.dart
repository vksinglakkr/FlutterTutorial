// /lib/Buttons/FlatButton/Que07Shadow.dart
import 'package:flutter/material.dart';

class Que08Border extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('side:'),
      ),
      body: Center(
        child: Container(
            color: Colors.black12,
            child: TextButton(
              child: Text('NIC, Kurukshetra'),
              style: TextButton.styleFrom(
                primary: Colors.teal,
                side: BorderSide(color: Colors.red, width: 5),
              ),
              onPressed: () {
                print('Pressed');
              },
            )),
      ),
    );
  }
}
