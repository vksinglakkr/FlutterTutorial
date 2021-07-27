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
        title: Text('Directly Writing callback'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                '''In this approach, we just define the function that is supposed to trigger as a callback when a specific event occurs.'''),
            SizedBox(height: 30),
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
