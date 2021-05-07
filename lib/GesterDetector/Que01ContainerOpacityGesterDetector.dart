import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - NIC, KKR'),
      ),
      body: GestureDetector(
          child: Opacity(
            opacity: _opacity,
            child: Container(height: 100, width: 100, color: Colors.red),
          ),
          onTap: () {
            setState(() {
              _opacity = _opacity - .1;
            });
          }),
    );
  }
}
