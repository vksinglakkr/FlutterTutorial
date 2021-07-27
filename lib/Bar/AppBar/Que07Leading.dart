import "package:flutter/material.dart";

class Que07LeadingEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("leading Ex.1"),
      leading: Icon(Icons.menu),
      //leading: Icon(Icons.arrow_back),
    ));
  }
}
