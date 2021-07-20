// main.dart
import 'package:flutter/material.dart';

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vertical text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: Text(
                'Just Some Vertical Text',
                style: TextStyle(fontSize: 50),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Just Some Vertical Text',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
