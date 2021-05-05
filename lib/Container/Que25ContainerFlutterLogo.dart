import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container, Flutter Logo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container, Flutter Logo'),
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
                child: FlutterLogo(
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
