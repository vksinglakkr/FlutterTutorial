import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que36GradientTransform extends StatefulWidget {
  @override
  Que36GradientTransformState createState() {
    return new Que36GradientTransformState();
  }
}

class Que36GradientTransformState extends State<Que36GradientTransform> {
  final String url1 =
      "https://medium.com/flutter-community/flutter-animated-series-animated-containers-52a5d52c0ad3";
  var top = FractionalOffset.topRight;
  var bottom = FractionalOffset.bottomLeft;
  var list = [
    Colors.lightGreen,
    Colors.redAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Animated Gradient")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: AnimatedContainer(
          height: 300.0,
          width: 300.0,
          duration: Duration(seconds: 1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: new LinearGradient(
                begin: top,
                end: bottom,
                colors: list,
                stops: [0.0, 1.0],
              ),
              color: Colors.lightGreen),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              if (top == FractionalOffset.bottomLeft) {
                top = FractionalOffset.bottomRight;
                bottom = FractionalOffset.topLeft;
                list = [Colors.blueAccent, Colors.yellowAccent];
              } else {
                top = FractionalOffset.bottomLeft;
                bottom = FractionalOffset.topRight;
                list = [Colors.lightGreen, Colors.redAccent];
              }
            });
          },
          icon: Icon(Icons.update),
          label: Text("Transform")),
    );
  }
}
