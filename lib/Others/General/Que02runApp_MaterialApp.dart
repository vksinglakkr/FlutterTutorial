// lib\General\Que02runApp_MaterialApp.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

void main() => runApp(
      MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(title: WidgetAppBar("Material App Bar")),
          body: Center(
            child: Container(
              child: Text('Hello World'),
            ),
          ),
        ),
      ),
    );
//Output Hello World in mid of Screen, white background
