// /lib/Buttons/FlatButton/Que07Shadow.dart
import 'package:flutter/material.dart';

class Que07Shadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shadowColor:'),
      ),
      body: Center(
        child: Container(
            color: Colors.black12,
            child: TextButton(
              child: Text('NIC, Kurukshetra'),
              style: TextButton.styleFrom(
                primary: Colors.teal,
//                onSurface: Colors.white,
                shadowColor: Colors.red,
                elevation: 5,
              ),
              onPressed: () {
                print('Pressed');
              },
            )),
      ),
    );
  }
}
