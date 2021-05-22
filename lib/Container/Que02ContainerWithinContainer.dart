import 'package:flutter/material.dart';

class Que02Container extends StatefulWidget {
  @override
  _Que02ContainerState createState() => _Que02ContainerState();
}

class _Que02ContainerState extends State<Que02Container> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.blue,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
