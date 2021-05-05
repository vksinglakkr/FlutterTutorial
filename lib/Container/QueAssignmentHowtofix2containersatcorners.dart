import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('2 Containers at Corner Bar'),
        ),
        body: Row(
          children: [
            Container(
              color: Colors.red,
              child: Text('Hello World'),
            ),
            Expanded(child: Center()),
            Container(
              color: Colors.blue,
              child: Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}
