// /lib/Buttons/FlatButton/Que06Theme.dart
import 'package:flutter/material.dart';

class Que06Theme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.red,
            textStyle: TextStyle(fontSize: 20),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('textButtonTheme:'),
        ),
        body: Center(
          child: Container(
            color: Colors.black12,
            child: TextButton(
              child: Text('NIC, Kurukshetra'),
              onPressed: () {
                print('Pressed');
              },
            ),
          ),
        ),
      ),
    );
  }
}
