import "package:flutter/material.dart";

class Que08bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("bottom:"),
      bottom: PreferredSize(
          child: Icon(
            Icons.linear_scale,
            size: 60.0,
          ),
          preferredSize: Size.fromHeight(50.0)),
    ));
  }
}
