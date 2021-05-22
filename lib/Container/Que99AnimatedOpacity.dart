import 'package:flutter/material.dart';

class Que99 extends StatefulWidget {
  @override
  _Que99State createState() => _Que99State();
}

class _Que99State extends State<Que99> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Opacity',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Opacity'),
        ),
        body: Center(
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: _visible ? 1.0 : 0.2,
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.blue,
              child: Text('Animated Opacity',
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          },
          tooltip: 'Toggle Opacity',
          child: Icon(Icons.flip),
        ),
      ),
    );
  }
}
