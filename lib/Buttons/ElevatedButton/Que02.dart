import 'package:flutter/material.dart';

class Que02 extends StatefulWidget {
  @override
  _Que02State createState() => _Que02State();
}

class _Que02State extends State<Que02> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        title: Text('Increment Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: TextStyle(fontSize: 50.0),
            ),
            ElevatedButton(
                // callback function
                // this increments the value
                // by 1 each time the Raised button is pressed
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text(''
                    'increase'))
          ],
        ),
      ),
    );
  }
}
