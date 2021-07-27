import "package:flutter/material.dart";

class Que09Bright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brightness, Elevation,\nBackground Color"),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 50.0,
        brightness: Brightness.dark,
        shadowColor: Colors.deepOrange,
        toolbarHeight: 70, //default is 56
        toolbarOpacity: 0.5,
        //        brightness: Brightness.light,
      ),
    );
  }
}
