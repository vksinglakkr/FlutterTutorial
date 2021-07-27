// lib/Bar\AppBar\Que01Actions.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que11ActionEx5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Iconic Buttons \nin AppBar"),
          actions: [
            Container(
              width: 30,
              child: Image.asset(
                'assets/VKSINGLA.jpg',
              ),
            ),
            Icon(Icons.more_vert),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
