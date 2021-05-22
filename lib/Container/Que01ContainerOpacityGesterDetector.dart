import 'package:flutter/material.dart';

class Que01Container extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01Container> {
  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container/OpacityGesterDetector'),
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
