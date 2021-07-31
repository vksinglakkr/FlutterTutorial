//Arun size,color

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que08 extends StatefulWidget {
  @override
  _Que08State createState() => _Que08State();
}

class _Que08State extends State<Que08> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: ImageIcon(
            AssetImage('assets/images/loading.png'),
            size: 50.0,
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
