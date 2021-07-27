// lib/Bar\AppBar\Que01Actions.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que11ActionEx4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Iconic Buttons \nin AppBar"),
          actions: [
            Icon(Icons.favorite),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            ),
            Icon(Icons.more_vert),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
