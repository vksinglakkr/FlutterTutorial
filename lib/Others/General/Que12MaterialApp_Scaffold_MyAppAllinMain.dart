// lib\General\Que12MaterialApp_Scaffold_MyAppAllinMain.dart
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('MaterialApp Scaffold'),
          ),
          body: Que12MaterialApp011(),
        ),
      ),
    );

class Que12MaterialApp011 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ],
    );
  }
}
