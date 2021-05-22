import 'package:flutter/material.dart';

class Que21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container, Stack, Positioned',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container, Stack, Positioned'),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 100,
              right: 50,
              child: Container(
                color: Colors.red,
                width: 200.0,
                height: 200.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
