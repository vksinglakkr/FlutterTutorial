import 'package:flutter/material.dart';

class Que14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container/Column App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container/Column Demo'),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Text('NIC Kurukshetra', style: TextStyle(fontSize: 20.0)),
            ),
          ],
        ),
      ),
    );
  }
}
