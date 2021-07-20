import 'package:flutter/material.dart';
import 'dart:math' as math;

class Que23Rotation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotation of text'),
      ),
      body: Column(
        children: [
          Spacer(flex: 1),
          RotationTransition(
            turns: new AlwaysStoppedAnimation(15 / 360),
            child: new Text("NIC, Kurukshetra"),
          ),
          Spacer(flex: 1),
          Container(
            // gray box
            child: new Center(
              child: new Transform(
                child: new Text(
                  "NIC, Kurukshetra",
                ),
                alignment: FractionalOffset.center,
                transform: new Matrix4.identity()
                  ..rotateZ(15 * 3.1415927 / 180),
              ),
            ),
          ),
          Spacer(flex: 1),
          RotatedBox(quarterTurns: 1, child: new Text("NIC, Kurukshetra")),
          Spacer(flex: 1),
          Transform.rotate(
            angle: -math.pi / 4,
            child: Text('NIC, Kurukshetra'),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
