import 'package:flutter/material.dart';
import 'HomeScreen_Image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tutorial'),
          ),
          body: ListView(
            children: [
              HomeImage(),
            ],
          )),
    );
  }
}
