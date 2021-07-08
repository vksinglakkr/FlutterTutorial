import 'package:flutter/material.dart';

class Que06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Unbounded Width of the TextField'),
        ),
        body: Row(
          children: [
            TextField(),
          ],
        ),
      ),
    );
  }
}
