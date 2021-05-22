import 'package:flutter/material.dart';

class Que08Floating extends StatefulWidget {
  @override
  _Que08FloatingState createState() => _Que08FloatingState();
}

class _Que08FloatingState extends State<Que08Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Icon with Label"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.refresh),
        label: Text('Refresh'),
      ),
    );
  }
}
