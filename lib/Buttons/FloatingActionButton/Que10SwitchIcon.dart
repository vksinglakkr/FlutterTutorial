import 'package:flutter/material.dart';

class Que10Floating extends StatefulWidget {
  @override
  _Que10FloatingState createState() => _Que10FloatingState();
}

class _Que10FloatingState extends State<Que10Floating> {
  Icon fab = Icon(
    Icons.refresh,
  );

  int fabIconNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Switch Icon"),
      ),
      floatingActionButton: FloatingActionButton(
        child: fab,
        onPressed: () => setState(() {
          if (fabIconNumber == 0) {
            fab = Icon(
              Icons.stop,
            );
            fabIconNumber = 1;
          } else {
            fab = Icon(Icons.refresh);
            fabIconNumber = 0;
          }
        }),
      ),
    );
  }
}