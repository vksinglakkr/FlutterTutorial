// lib/Bar\AppBar\Que02CenterText.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que12ShapeEx1 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que12ShapeEx1> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Shape: \nStadiumBorder()"),
           shape: StadiumBorder(),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
