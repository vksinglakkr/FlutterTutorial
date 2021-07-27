import 'package:flutter/material.dart';

class Que00Diagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design Diagram'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Spacer(flex: 1),
              Image(
                  image: AssetImage("assets/help/Bar/AppBar/AppBar (4).jpeg")),
              Spacer(flex: 1),
              Image(
                  image: AssetImage("assets/help/Bar/AppBar/AppBar (1).jpeg")),
              Spacer(flex: 1),
              Image(
                  image: AssetImage("assets/help/Bar/AppBar/AppBar (2).jpeg")),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
