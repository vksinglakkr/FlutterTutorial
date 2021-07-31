//Arun size,color

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que00 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Icon(
          Icons.image,
          size: 120.0,
          color: Colors.red,
//        color: Theme.of(context).primaryColor,
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
