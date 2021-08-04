import 'package:flutter/material.dart';

class QueHeightWidth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Text("Text wrapped in Center"),
            Center(
              heightFactor: 4,
              child: Text('Logo'),
            ),
            Spacer(flex: 1),
            Text("Container - Center - Container"),
            Container(
              color: Colors.amber,
              child: Center(
                heightFactor: 2,
                widthFactor: 2,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
